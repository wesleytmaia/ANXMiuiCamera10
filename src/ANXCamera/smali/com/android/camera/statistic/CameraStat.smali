.class public Lcom/android/camera/statistic/CameraStat;
.super Ljava/lang/Object;
.source "CameraStat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/statistic/CameraStat$Category;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "2882303761517373386"

.field private static final APP_KEY:Ljava/lang/String; = "5641737344386"

.field public static final CATEGORY_CAMERA:Ljava/lang/String; = "capture"

.field public static final CATEGORY_COUNTER:Ljava/lang/String; = "counter"

.field public static final CATEGORY_SETTINGS:Ljava/lang/String; = "settings"

.field private static final CHANNEL:Ljava/lang/String;

.field public static final KEY_AI_DETECT_CHANGED:Ljava/lang/String; = "ai_detect_changed"

.field public static final KEY_AI_SCENE_CHANGED:Ljava/lang/String; = "ai_scene_changed"

.field public static final KEY_AI_SCENE_SWITCHED:Ljava/lang/String; = "ai_scene_switched"

.field public static final KEY_BACK_CAMERA_INFO:Ljava/lang/String; = "back_camera_info"

.field public static final KEY_BEAUTY_3D_MAKEUP_BUTTON:Ljava/lang/String; = "beauty_3d_makeup_button"

.field public static final KEY_BEAUTY_BUTTON:Ljava/lang/String; = "beauty_button"

.field public static final KEY_BEAUTY_LEVEL_BUTTON:Ljava/lang/String; = "beauty_level_button"

.field public static final KEY_BEAUTY_MAKEUP_BUTTON:Ljava/lang/String; = "beauty_makeup_button"

.field public static final KEY_BEAUTY_SWITCH_CHANGED:Ljava/lang/String; = "beauty_switch_changed"

.field public static final KEY_BURST_SHOT_TIMES:Ljava/lang/String; = "burst_shot_times"

.field public static final KEY_CALL_CAMERA_FROM_VOICE_CONTROL:Ljava/lang/String; = "voice_assist_call_event"

.field public static final KEY_CAMERA_BROADCAST_KILL_SERVICE:Ljava/lang/String; = "camera_broadcast_kill_service"

.field public static final KEY_CAMERA_ERROR_DIALOG_SHOW:Ljava/lang/String; = "camera_error_dialog_show"

.field public static final KEY_CAMERA_HARDWARE_ERROR:Ljava/lang/String; = "camera_hardware_error"

.field public static final KEY_DUAL_ZOOM_CHANGED:Ljava/lang/String; = "dual_zoom_changed"

.field public static final KEY_EV_ADJUSTED:Ljava/lang/String; = "ev_adjusted"

.field public static final KEY_FILTER_CHANGED:Ljava/lang/String; = "filter_changed"

.field public static final KEY_FLASH_CHANGED:Ljava/lang/String; = "flash_changed"

.field public static final KEY_FPS960_PROCESS_FAILED:Ljava/lang/String; = "fps_960_process_failed"

.field public static final KEY_FPS960_TOO_SHORT:Ljava/lang/String; = "fps_960_too_short"

.field public static final KEY_FRONT_CAMERA_INFO:Ljava/lang/String; = "front_camera_info"

.field public static final KEY_GENDER_AGE_CHANGED:Ljava/lang/String; = "gender_age_changed"

.field public static final KEY_GOTO_GALLERY:Ljava/lang/String; = "goto_gallery"

.field public static final KEY_GOTO_SETTINGS:Ljava/lang/String; = "goto_settings"

.field public static final KEY_GRADIENT_CHANGED:Ljava/lang/String; = "gradienter_changed"

.field public static final KEY_GROUP_SHOT_CHANGED:Ljava/lang/String; = "group_shot_changed"

.field public static final KEY_HDR_CHANGED:Ljava/lang/String; = "hdr_changed"

.field public static final KEY_HHT_CHANGED:Ljava/lang/String; = "hht_changed"

.field public static final KEY_LIGHTING_BUTTON:Ljava/lang/String; = "lighting_button"

.field public static final KEY_LIGHTING_CHANGED:Ljava/lang/String; = "lighting_changed"

.field public static final KEY_MAGIC_MIRROR_CHANGED:Ljava/lang/String; = "magic_mirror_changed"

.field public static final KEY_MANUAL_AWB_CHANGED:Ljava/lang/String; = "manual_awb_changed"

.field public static final KEY_MANUAL_EXPOSURE_TIME_CHANGED:Ljava/lang/String; = "manual_exposure_time_changed"

.field public static final KEY_MANUAL_FOCUS_PEAK_CHANGED:Ljava/lang/String; = "manual_focus_peak_changed"

.field public static final KEY_MANUAL_FOCUS_POSITION_CHANGED:Ljava/lang/String; = "manual_focus_position_changed"

.field public static final KEY_MANUAL_ISO_CHANGED:Ljava/lang/String; = "manual_iso_changed"

.field public static final KEY_MANUAL_LENS_CHANGED:Ljava/lang/String; = "manual_lens_changed"

.field public static final KEY_NEW_SLOW_MOTION:Ljava/lang/String; = "slow_motion_mode"

.field public static final KEY_PANORAMA_DIRECTION_CHANGED:Ljava/lang/String; = "panorama_direction_changed"

.field public static final KEY_PICTURE_LOST:Ljava/lang/String; = "lost_picture"

.field public static final KEY_PICTURE_MISS_TAKEN:Ljava/lang/String; = "picture_miss_taken"

.field public static final KEY_PICTURE_TAKEN:Ljava/lang/String; = "picture_taken"

.field public static final KEY_PICTURE_TAKEN_BEAUTY:Ljava/lang/String; = "picture_taken_beauty"

.field public static final KEY_PICTURE_TAKEN_BEAUTY_LEGACY:Ljava/lang/String; = "picture_taken_beauty_legacy"

.field public static final KEY_PICTURE_TAKEN_BURST:Ljava/lang/String; = "picture_taken_burst"

.field public static final KEY_PICTURE_TAKEN_GAP:Ljava/lang/String; = "picture_taken_gap"

.field public static final KEY_PICTURE_TAKEN_MANUAL:Ljava/lang/String; = "picture_taken_manual"

.field public static final KEY_PICTURE_TAKEN_PANORAMA:Ljava/lang/String; = "picture_taken_panorama"

.field public static final KEY_POCKET_MODE_ENTER:Ljava/lang/String; = "pocket_mode_enter"

.field public static final KEY_POCKET_MODE_KEYGUARD_EXIT:Ljava/lang/String; = "pocket_mode_keyguard_exit"

.field public static final KEY_POCKET_MODE_SENSOR_DELAY:Ljava/lang/String; = "pocket_mode_sensor_delay"

.field public static final KEY_QRCODE_DETECTED:Ljava/lang/String; = "qrcode_detected"

.field public static final KEY_SNAP_CAMERA:Ljava/lang/String; = "snap_camera"

.field public static final KEY_START_APP_COST:Ljava/lang/String; = "start_app_cost"

.field public static final KEY_SUPER_RESOLUTION_CHANGED:Ljava/lang/String; = "super_resolution_changed"

.field public static final KEY_T2T_TIMES:Ljava/lang/String; = "t2t_times"

.field public static final KEY_TAKE_PICTURE_COST:Ljava/lang/String; = "take_picture_cost"

.field public static final KEY_TILTSHIFT_CHANGED:Ljava/lang/String; = "tiltshift_changed"

.field public static final KEY_TIMER_CHANGED:Ljava/lang/String; = "timer_changed"

.field public static final KEY_VIDEO_MODE_CHANGED:Ljava/lang/String; = "video_mode_changed"

.field public static final KEY_VIDEO_PAUSE_RECORDING:Ljava/lang/String; = "video_pause_recording"

.field public static final KEY_VIDEO_SNAPSHOT:Ljava/lang/String; = "video_snapshot"

.field public static final KEY_VIDEO_TAKEN:Ljava/lang/String; = "video_taken"

.field public static final KEY_VIDEO_TIME_LAPSE_INTERVAL:Ljava/lang/String; = "video_time_lapse_interval"

.field public static final KEY_ZOOM_ADJUSTED:Ljava/lang/String; = "zoom_adjusted"

.field public static final LOCATION_CLOSED:Ljava/lang/String; = "\u5173"

.field public static final LOCATION_WITH:Ljava/lang/String; = "\u6709"

.field public static final LOCATION_WITHOUT:Ljava/lang/String; = "\u65e0"

.field public static final NEW_SLOW_MOTION_SWITCH_FPS:Ljava/lang/String; = "\u5e27\u7387\u5207\u6362"

.field public static final PANORAMA_DIRECTION_L2R:Ljava/lang/String; = "\u4ece\u5de6\u5f80\u53f3"

.field public static final PANORAMA_DIRECTION_R2L:Ljava/lang/String; = "\u4ece\u53f3\u5f80\u5de6"

.field public static final PARAM_AI_SCENE_DETECTED:Ljava/lang/String; = "\u667a\u80fd\u573a\u666f\u53d1\u73b0"

.field public static final PARAM_AI_SCENE_SWITCHED:Ljava/lang/String; = "\u667a\u80fd\u573a\u666f\u5f00\u5173"

.field public static final PARAM_AUTO_HDR:Ljava/lang/String; = "\u81ea\u52a8HDR"

.field public static final PARAM_AUTO_HHT:Ljava/lang/String; = "\u81ea\u52a8HHT"

.field public static final PARAM_AWB:Ljava/lang/String; = "\u767d\u5e73\u8861"

.field public static final PARAM_BEAUTY_BLUSHER:Ljava/lang/String; = "\u816e\u7ea2"

.field public static final PARAM_BEAUTY_CHIN:Ljava/lang/String; = "\u7fd8\u4e0b\u5df4"

.field public static final PARAM_BEAUTY_ENLARGE_EYE:Ljava/lang/String; = "\u5927\u773c"

.field public static final PARAM_BEAUTY_EYEBROW_DYE:Ljava/lang/String; = "\u67d3\u7709"

.field public static final PARAM_BEAUTY_JELLY_LIPS:Ljava/lang/String; = "\u679c\u51bb\u5507"

.field public static final PARAM_BEAUTY_LEVEL:Ljava/lang/String; = "\u7b49\u7ea7"

.field public static final PARAM_BEAUTY_LIPS:Ljava/lang/String; = "\u82b1\u74e3\u5507"

.field public static final PARAM_BEAUTY_NECK:Ljava/lang/String; = "\u5929\u9e45\u9888"

.field public static final PARAM_BEAUTY_NOSE:Ljava/lang/String; = "\u82ad\u6bd4\u9f3b"

.field public static final PARAM_BEAUTY_PUPIL_LINE:Ljava/lang/String; = "\u7f8e\u77b3\u7ebf"

.field public static final PARAM_BEAUTY_RISORIUS:Ljava/lang/String; = "\u82f9\u679c\u808c"

.field public static final PARAM_BEAUTY_SKIN_COLOR:Ljava/lang/String; = "\u7f8e\u767d"

.field public static final PARAM_BEAUTY_SKIN_SMOOTH:Ljava/lang/String; = "\u5ae9\u80a4"

.field public static final PARAM_BEAUTY_SLIM_FACE:Ljava/lang/String; = "\u7626\u8138"

.field public static final PARAM_BEAUTY_SLIM_NOSE:Ljava/lang/String; = "\u7626\u9f3b"

.field public static final PARAM_BEAUTY_SMILE:Ljava/lang/String; = "\u5fae\u7b11"

.field public static final PARAM_CAMERA_ID:Ljava/lang/String; = "\u524d\u540e\u6444"

.field public static final PARAM_CAMERA_MODE:Ljava/lang/String; = "\u6a21\u5f0f"

.field public static final PARAM_COMMON_MODE:Ljava/lang/String; = "\u65b9\u5f0f"

.field public static final PARAM_DUAL_WATERMARK:Ljava/lang/String; = "\u53cc\u6444\u6c34\u5370"

.field public static final PARAM_ET:Ljava/lang/String; = "\u5feb\u95e8"

.field public static final PARAM_FILTER:Ljava/lang/String; = "\u6ee4\u955c"

.field public static final PARAM_FLASH_MODE:Ljava/lang/String; = "\u95ea\u5149\u706f"

.field public static final PARAM_FOCUS_PEAK:Ljava/lang/String; = "\u5cf0\u503c\u5bf9\u7126"

.field public static final PARAM_FOCUS_POSITION:Ljava/lang/String; = "\u5bf9\u7126"

.field public static final PARAM_GENDER_AGE:Ljava/lang/String; = "\u5e74\u9f84\u68c0\u6d4b"

.field public static final PARAM_GRADIENTER:Ljava/lang/String; = "\u6c34\u5e73\u4eea"

.field public static final PARAM_GROUP_SHOT:Ljava/lang/String; = "\u5408\u5f71\u4f18\u9009"

.field public static final PARAM_HDR:Ljava/lang/String; = "HDR"

.field public static final PARAM_HHT:Ljava/lang/String; = "HHT"

.field public static final PARAM_ISO:Ljava/lang/String; = "\u611f\u5149\u5ea6"

.field public static final PARAM_LENS:Ljava/lang/String; = "\u955c\u5934"

.field public static final PARAM_LIGHTING:Ljava/lang/String; = "\u5149\u6548"

.field public static final PARAM_LOCATION:Ljava/lang/String; = "\u5730\u7406\u4f4d\u7f6e"

.field public static final PARAM_MAGIC_MIRROR:Ljava/lang/String; = "\u9b54\u955c"

.field public static final PARAM_PANORAMA_DIRECTION:Ljava/lang/String; = "\u65b9\u5411"

.field public static final PARAM_PICTURE_RATIO:Ljava/lang/String; = "\u753b\u5e45"

.field public static final PARAM_QUALITY:Ljava/lang/String; = "\u753b\u8d28"

.field public static final PARAM_SUPER_RESOLUTION:Ljava/lang/String; = "\u8d85\u5206\u8fa8\u7387"

.field public static final PARAM_TILTSHIFT:Ljava/lang/String; = "\u79fb\u8f74"

.field public static final PARAM_TIMER:Ljava/lang/String; = "\u5012\u8ba1\u65f6"

.field public static final PARAM_TIME_WATERMARK:Ljava/lang/String; = "\u65f6\u95f4\u6c34\u5370"

.field public static final PARAM_TRIGGER_MODE:Ljava/lang/String; = "\u89e6\u53d1\u65b9\u5f0f"

.field public static final PARAM_VIDEO_FPS:Ljava/lang/String; = "\u5e27\u7387"

.field public static final PARAM_VIDEO_MODE:Ljava/lang/String; = "\u6a21\u5f0f"

.field public static final PARAM_VIDEO_TIME:Ljava/lang/String; = "\u65f6\u957f"

.field public static final PARAM_ZOOM:Ljava/lang/String; = "\u53d8\u7126"

.field public static final POCKET_MODE_KEYGUARD_EXIT_DISMISS:Ljava/lang/String; = "\u9501\u5c4f\u624b\u52a8\u89e3\u9664"

.field public static final POCKET_MODE_KEYGUARD_EXIT_TIMEOUT:Ljava/lang/String; = "\u9501\u5c4f\u8d85\u65f6\u9000\u51fa"

.field public static final POCKET_MODE_KEYGUARD_EXIT_UNLOCK:Ljava/lang/String; = "\u9501\u5c4f\u81ea\u52a8\u89e3\u9664"

.field public static final POCKET_MODE_NONUI_ENTER_SNAP:Ljava/lang/String; = "NonUI\u8857\u62cd"

.field public static final POCKET_MODE_NONUI_ENTER_VOLUME:Ljava/lang/String; = "NonUI\u97f3\u91cf\u952e"

.field public static final POCKET_MODE_PSENSOR_ENTER_KEYGUARD:Ljava/lang/String; = "Psensor\u9501\u5c4f\u8fdb\u5165"

.field public static final POCKET_MODE_PSENSOR_ENTER_SNAP:Ljava/lang/String; = "Psensor\u8857\u62cd"

.field public static final POCKET_MODE_PSENSOR_ENTER_VOLUME:Ljava/lang/String; = "Psensor\u97f3\u91cf\u952e"

.field public static final SWITCH_MODE_CLICK:Ljava/lang/String; = "\u70b9\u51fb"

.field public static final SWITCH_MODE_SLIDE:Ljava/lang/String; = "\u6ed1\u52a8"

.field private static final TAG:Ljava/lang/String;

.field public static final VALUE_BACK_CAMERA:Ljava/lang/String; = "\u540e\u6444"

.field public static final VALUE_FRONT_CAMERA:Ljava/lang/String; = "\u524d\u6444"

.field public static final VALUE_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_ON:Ljava/lang/String; = "on"

.field public static final ZOOM_1X:Ljava/lang/String; = "1x"

.field public static final ZOOM_2X:Ljava/lang/String; = "2x"

.field public static final ZOOM_MODE_GESTURE:Ljava/lang/String; = "\u624b\u52bf"

.field public static final ZOOM_MODE_VOLUME:Ljava/lang/String; = "\u97f3\u91cf\u952e"

.field private static sDumpStatEvent:Z

.field private static sIsAnonymous:Z

.field private static sIsCounterEventEnabled:Z

.field private static sIsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    const-class v0, Lcom/android/camera/statistic/CameraStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/CameraStat;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "ro.product.mod_device"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/statistic/CameraStat;->CHANNEL:Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " category:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " key:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    if-eqz p3, :cond_0

    .line 328
    const-string p0, " value:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_0
    if-eqz p4, :cond_2

    .line 331
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string p0, "params:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 337
    add-int/lit8 p1, p0, -0x1

    const-string p2, "]"

    invoke-virtual {v0, p1, p0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_2
    sget-object p0, Lcom/android/camera/statistic/CameraStat;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    .line 227
    const-string v0, "camera.debug.dump_stat_event"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/statistic/CameraStat;->sDumpStatEvent:Z

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    .line 230
    sget-boolean v1, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    if-eqz v1, :cond_0

    .line 231
    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsCounterEventEnabled:Z

    .line 232
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsAnonymous:Z

    .line 233
    const-string v0, "2882303761517373386"

    const-string v1, "5641737344386"

    sget-object v2, Lcom/android/camera/statistic/CameraStat;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-boolean p0, Lcom/android/camera/statistic/CameraStat;->sIsAnonymous:Z

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    .line 236
    const/4 p0, 0x4

    const-wide/32 v1, 0x15f90

    invoke-static {p0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 237
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public static isCounterEventDisabled()Z
    .locals 1

    .line 242
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsCounterEventEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 284
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 285
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 291
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_2

    .line 292
    const-string v0, "CalculateEvent"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/camera/statistic/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    :cond_2
    return-void
.end method

.method public static recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 298
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 299
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 305
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_2

    .line 306
    const-string v0, "CalculateEvent"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p0, p1, p2, p4}, Lcom/android/camera/statistic/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 308
    :cond_2
    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 258
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 259
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_2

    .line 266
    const-string v0, "CountEvent"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, v1}, Lcom/android/camera/statistic/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 268
    :cond_2
    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 272
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 278
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_2

    .line 279
    const-string v0, "CountEvent"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/android/camera/statistic/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 281
    :cond_2
    return-void
.end method

.method public static recordPageEnd()V
    .locals 1

    .line 252
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageEnd()V

    .line 255
    :cond_0
    return-void
.end method

.method public static recordPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 246
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 311
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsEnabled:Z

    if-eqz v0, :cond_1

    .line 312
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sIsAnonymous:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/camera/statistic/CameraStat;->sDumpStatEvent:Z

    if-eqz v0, :cond_2

    .line 319
    const-string v0, "PropertyEvent"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/android/camera/statistic/CameraStat;->dumpEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 321
    :cond_2
    return-void
.end method
