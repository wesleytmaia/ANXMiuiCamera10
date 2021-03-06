package com.ss.android.vesdk;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.view.Surface;
import com.ss.android.medialib.model.TimeSpeedModel;
import com.ss.android.ttve.oauth.TEOAuth;
import com.ss.android.vesdk.VEListener.VERecorderStateListener;
import com.ss.android.vesdk.runtime.VERecorderResManager;
import com.ss.android.vesdk.runtime.VERuntime;
import java.util.List;

public class TERecorder {
    private VEAudioEncodeSettings mAudioEncodeSettings = null;
    private VEPreviewSettings mPreviewSettings = null;
    private int mRecordCount;
    private IRecorder mRecorder;
    private VERecorderResManager mResManager;
    private VERuntime mVERuntime;
    private VEVideoEncodeSettings mVideoEncodeSettings = null;

    public TERecorder(String str, Context context) {
        if (TextUtils.isEmpty(str)) {
            throw new VEException(-100, "workSpace is null");
        } else if (context != null) {
            this.mResManager = new VERecorderResManager(str);
            this.mVERuntime = VERuntime.getInstance();
            this.mVERuntime.init(context, str);
            this.mRecorder = new RecordV1(context);
        } else {
            throw new NullPointerException("context could not be null");
        }
    }

    public void setRenderCallback(IRenderCallback iRenderCallback) {
        this.mRecorder.setRenderCallback(iRenderCallback);
    }

    public void setRecrodStateCallback(VERecorderStateListener vERecorderStateListener) {
        this.mRecorder.setRecordStateCallback(vERecorderStateListener);
    }

    public int init(@NonNull VEVideoEncodeSettings vEVideoEncodeSettings, @NonNull VEAudioEncodeSettings vEAudioEncodeSettings, @NonNull VEPreviewSettings vEPreviewSettings) throws VEException {
        this.mVideoEncodeSettings = vEVideoEncodeSettings;
        this.mAudioEncodeSettings = vEAudioEncodeSettings;
        this.mPreviewSettings = vEPreviewSettings;
        String detectModelsDir = this.mVERuntime.getEnv().getDetectModelsDir();
        String segmentDirPath = this.mResManager.getSegmentDirPath();
        if (TEOAuth.isPermitted()) {
            return this.mRecorder.init(vEVideoEncodeSettings, vEAudioEncodeSettings, vEPreviewSettings, detectModelsDir, segmentDirPath);
        }
        return VEResult.TER_OAUTH_FAIL;
    }

    public int startPreview(Surface surface) {
        return this.mRecorder.startPreview(surface);
    }

    public void updatePreviewSettings(VEPreviewSettings vEPreviewSettings) {
        this.mPreviewSettings = vEPreviewSettings;
        this.mRecorder.updatePreviewSettings(vEPreviewSettings);
    }

    public int stopPreview() {
        return this.mRecorder.stopPreview();
    }

    public int setRecordBGM(String str, int i, int i2, int i3) {
        return this.mRecorder.setRecordBGM(str, i, i2, i3);
    }

    public int startRecord(float f) {
        String genSegmentVideoPath = this.mResManager.genSegmentVideoPath(this.mRecordCount);
        String genSegmentAudioPath = this.mResManager.genSegmentAudioPath(this.mRecordCount);
        this.mRecordCount++;
        this.mResManager.addSegmentAudioPath(genSegmentAudioPath);
        this.mResManager.addSegmentVideoPath(genSegmentVideoPath);
        return this.mRecorder.startRecord(genSegmentVideoPath, genSegmentAudioPath, f);
    }

    public int stopRecord() {
        return this.mRecorder.stopRecord();
    }

    public long getEndFrameTime() {
        return this.mRecorder.getEndFrameTime();
    }

    public void deleteLastFrag() {
        this.mRecorder.deleteLastFrag();
    }

    public void clearEnv() {
        this.mRecorder.clearEnv();
    }

    @WorkerThread
    public String[] concat() throws VEException {
        this.mResManager.genConcatSegmentVideoPath();
        this.mResManager.genConcatSegmentAudioPath();
        int concat = this.mRecorder.concat(this.mResManager.getConcatSegmentVideoPath(), this.mResManager.getConcatSegmentAudioPath());
        if (concat >= 0) {
            return new String[]{r0, r1};
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("concat failed: ");
        stringBuilder.append(concat);
        throw new VEException(-1, stringBuilder.toString());
    }

    public List<TimeSpeedModel> getSegmentInfo() {
        return this.mRecorder.getSegmentInfo();
    }

    public int tryRestore() {
        return this.mRecorder.tryRestore();
    }

    public void destroy() {
        this.mRecorder.destroy();
        this.mRecorder = null;
    }

    public int setFilter(String str, float f) {
        return this.mRecorder.setFilter(str, f);
    }

    public int setFilter(String str, String str2, float f) {
        return this.mRecorder.setFilter(str, str2, f);
    }

    public int setBeautyFace(int i, String str) {
        return this.mRecorder.setBeautyFace(i, str);
    }

    public int setBeautyFaceIntensity(float f, float f2) {
        return this.mRecorder.setBeautyFaceIntensity(f, f2);
    }

    public int setFaceReshape(String str, float f, float f2) {
        return this.mRecorder.setFaceReshape(str, f, f2);
    }

    public int switchEffect(String str) {
        return this.mRecorder.switchEffect(str);
    }

    public int setDeviceRotation(float[] fArr) {
        return this.mRecorder.setDeviceRotation(fArr);
    }

    public int pauseEffectAudio(boolean z) {
        return this.mRecorder.pauseEffectAudio(z);
    }
}
