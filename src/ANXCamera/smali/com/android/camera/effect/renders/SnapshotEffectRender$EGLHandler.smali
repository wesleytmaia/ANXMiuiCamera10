.class Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;
.super Landroid/os/Handler;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_DRAW_MAIN_ASYNC:I = 0x1

.field public static final MSG_DRAW_MAIN_SYNC:I = 0x2

.field public static final MSG_DRAW_THUMB:I = 0x4

.field public static final MSG_GET_DRAW_THUMB:I = 0x3

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_PREPARE_EFFECT_RENDER:I = 0x6

.field public static final MSG_RELEASE:I = 0x5


# instance fields
.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 368
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 369
    return-void
.end method

.method private applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B
    .locals 26

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 532
    move-object/from16 v0, p5

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyEffect: applyToThumb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz v10, :cond_0

    iget-object v1, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 534
    :goto_0
    if-nez v1, :cond_2

    .line 535
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_1

    const-string v2, "thumb!"

    goto :goto_1

    :cond_1
    const-string v2, "jpeg!"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x0

    return-object v0

    .line 539
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 540
    const/4 v12, 0x1

    new-array v13, v12, [I

    .line 541
    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 542
    aget v4, v13, v14

    move/from16 v5, p2

    invoke-static {v1, v4, v5}, Lcom/android/camera/effect/ShaderNativeUtil;->initTexture([BII)[I

    move-result-object v4

    .line 543
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 544
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v2, v15, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz v10, :cond_3

    aget v2, v4, v14

    .line 547
    :goto_2
    move v7, v2

    goto :goto_3

    .line 546
    :cond_3
    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    goto :goto_2

    .line 547
    :goto_3
    if-eqz v10, :cond_4

    aget v2, v4, v12

    .line 548
    :goto_4
    move v6, v2

    goto :goto_5

    .line 547
    :cond_4
    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    goto :goto_4

    .line 548
    :goto_5
    if-eqz v10, :cond_5

    aget v2, v4, v14

    .line 549
    :goto_6
    move v5, v2

    goto :goto_7

    .line 548
    :cond_5
    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    goto :goto_6

    .line 549
    :goto_7
    if-eqz v10, :cond_6

    aget v2, v4, v12

    .line 551
    :goto_8
    move v4, v2

    goto :goto_9

    .line 549
    :cond_6
    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    goto :goto_8

    .line 551
    :goto_9
    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-direct {v9, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    .line 552
    if-nez v2, :cond_7

    .line 553
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v2, "init render failed"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-object v1

    .line 556
    :cond_7
    instance-of v1, v2, Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v1, :cond_8

    .line 557
    move-object v1, v2

    check-cast v1, Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v1, v7, v6}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    .line 559
    :cond_8
    invoke-virtual {v2, v5, v4}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 560
    iget-object v1, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 561
    iget-boolean v1, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    .line 562
    if-eqz v10, :cond_9

    .line 563
    invoke-virtual {v2, v7, v6}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    goto :goto_a

    .line 565
    :cond_9
    iget v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 567
    :goto_a
    iget v0, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 568
    iget v0, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 569
    iget v0, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 571
    invoke-direct {v9, v7, v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->checkFrameBuffer(II)V

    .line 573
    iget-object v0, v9, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v1, v9, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/SnapshotCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 576
    iget-object v0, v9, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    .line 577
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    aget v16, v13, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x1

    move-object v15, v0

    move/from16 v19, v7

    move/from16 v20, v6

    invoke-direct/range {v15 .. v21}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIIIZ)V

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 578
    invoke-virtual {v2}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    .line 579
    nop

    .line 580
    nop

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->getWaterInfos()Ljava/util/List;

    move-result-object v1

    iget v15, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-boolean v3, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsPortraitRawData:Z

    move-object v0, v9

    move v2, v7

    move/from16 v16, v3

    move v3, v6

    move/from16 v17, v4

    move v4, v5

    move/from16 v18, v5

    move/from16 v5, v17

    move v14, v6

    move v6, v15

    move v15, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIZ)V

    .line 582
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 583
    if-le v15, v14, :cond_a

    .line 584
    sub-int v7, v15, v14

    div-int/lit8 v7, v7, 0x2

    .line 585
    iget-object v0, v9, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    mul-int/2addr v0, v14

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v0, v1

    sub-int/2addr v7, v0

    .line 586
    nop

    .line 593
    move v15, v14

    const/4 v6, 0x0

    goto :goto_c

    .line 588
    :cond_a
    sub-int v6, v14, v15

    div-int/lit8 v6, v6, 0x2

    .line 589
    iget-object v0, v9, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    mul-int/2addr v0, v15

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v0, v1

    sub-int/2addr v6, v0

    .line 590
    nop

    .line 593
    move v14, v15

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    :goto_b
    const/4 v7, 0x0

    :goto_c
    if-eqz v10, :cond_c

    .line 594
    if-eqz v11, :cond_d

    .line 595
    iput v15, v11, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    .line 596
    iput v14, v11, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    .line 597
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 600
    :cond_c
    iput v15, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 601
    iput v14, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 605
    :cond_d
    :goto_d
    iget-boolean v0, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_e

    .line 606
    iget v11, v8, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object v0, v9

    move-object v1, v8

    move v2, v7

    move v3, v6

    move v4, v15

    move v5, v14

    move v8, v6

    move/from16 v6, v18

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v25, v8

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIIII)V

    goto :goto_e

    .line 608
    :cond_e
    move/from16 v25, v6

    move/from16 v24, v7

    :goto_e
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v22

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/16 v0, 0xd05

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 613
    iget-object v2, v9, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    .line 614
    if-eqz v10, :cond_f

    .line 615
    iget-object v2, v9, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    const-string v3, "normal"

    invoke-static {v3}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 617
    :cond_f
    move/from16 v7, v24

    move/from16 v6, v25

    invoke-static {v7, v6, v15, v14, v2}, Lcom/android/camera/effect/ShaderNativeUtil;->getPicture(IIIII)[B

    move-result-object v2

    .line 618
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    aget v1, v13, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 621
    invoke-static {v12, v13, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 623
    :cond_10
    iget-object v0, v9, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->endBindFrameBuffer()V

    .line 625
    return-object v2
.end method

.method private checkFrameBuffer(II)V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 814
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 815
    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 816
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 817
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 819
    :cond_1
    return-void
.end method

.method private drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;IIIIIZ)V"
        }
    .end annotation

    .line 508
    invoke-static {}, Lcom/mi/config/b;->gL()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p7, :cond_0

    goto :goto_0

    .line 512
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    new-instance v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    move-object v1, p1

    invoke-direct {v0, v1}, Lcom/android/camera/watermark/WaterMarkBitmap;-><init>(Ljava/util/List;)V

    .line 514
    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    .line 515
    if-eqz v1, :cond_1

    .line 516
    new-instance v11, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;

    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    move v4, p2

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;-><init>(Landroid/graphics/Bitmap;IIIIIFF)V

    .line 522
    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getOrientation()I

    move-result v1

    sub-int v1, p6, v1

    const/4 v2, 0x0

    move-object v3, p0

    invoke-direct {v3, v11, v2, v2, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 524
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->releaseBitmap()V

    .line 525
    const-class v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Draw age_gender_and_magic_mirror water mark"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    return-void

    .line 509
    :cond_3
    :goto_0
    return-void
.end method

.method private drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 680
    nop

    .line 681
    new-instance v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-direct {v6, v1, v2, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)V

    .line 682
    const/4 v8, 0x1

    move v3, v8

    :goto_0
    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    sget v2, Lcom/android/gallery3d/ui/BaseGLCanvas;->sMaxTextureSize:I

    const/4 v4, 0x2

    if-gt v1, v2, :cond_e

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    sget v2, Lcom/android/gallery3d/ui/BaseGLCanvas;->sMaxTextureSize:I

    if-le v1, v2, :cond_0

    goto/16 :goto_c

    .line 689
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "downScale: %d width: %d %d parallel: %b"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 690
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    iget v10, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v4, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v4

    .line 689
    invoke-static {v2, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v1

    .line 693
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mainLen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v4, "null"

    goto :goto_1

    :cond_1
    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    if-eqz v1, :cond_2

    .line 695
    iput-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 696
    nop

    .line 699
    :cond_2
    if-eqz p2, :cond_b

    .line 702
    nop

    .line 703
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    monitor-enter v1

    .line 704
    :try_start_0
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 705
    iget-object v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 708
    iget-object v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v12

    iget-object v13, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget-boolean v14, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mNeedThumbnail:Z

    .line 710
    if-nez v2, :cond_3

    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    .line 711
    move-object v15, v0

    goto :goto_2

    :cond_3
    move-object v15, v2

    :goto_2
    if-nez v2, :cond_4

    :goto_3
    move-object/from16 v16, v3

    goto :goto_4

    :cond_4
    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    goto :goto_3

    :goto_4
    iget-wide v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    iget-object v4, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v5, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v6, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget-object v9, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget v10, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 721
    if-nez v2, :cond_5

    iget-boolean v11, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    :goto_5
    move/from16 v27, v11

    goto :goto_6

    :cond_5
    goto :goto_5

    :goto_6
    const/16 v28, 0x0

    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    .line 708
    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v9

    move/from16 v24, v10

    move/from16 v29, p3

    move-object/from16 v30, v2

    move-object/from16 v31, v7

    invoke-virtual/range {v12 .. v31}, Lcom/android/camera/storage/ImageSaver;->addImage([BZLjava/lang/String;Ljava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;IZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)V

    goto/16 :goto_a

    .line 727
    :cond_6
    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_8

    .line 728
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v3, "addImageForEffect"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v9

    .line 730
    if-nez v2, :cond_7

    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :cond_7
    move-object v10, v2

    iget-wide v11, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v13, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v14, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object v15, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    const/16 v18, 0x0

    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    .line 729
    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v19, p3

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v9 .. v21}, Lcom/android/camera/storage/Storage;->addImageForEffect(Landroid/app/Activity;Ljava/lang/String;JLandroid/location/Location;I[BIIZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    goto :goto_a

    .line 742
    :cond_8
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImage: uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v9

    iget-object v10, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget-object v11, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v12, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    .line 747
    if-nez v2, :cond_9

    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move-object v13, v0

    goto :goto_7

    :cond_9
    move-object v13, v2

    :goto_7
    iget-object v14, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v15, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 752
    if-nez v2, :cond_a

    .line 743
    :goto_8
    move-object/from16 v18, v3

    goto :goto_9

    .line 752
    :cond_a
    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    goto :goto_8

    .line 743
    :goto_9
    move/from16 v16, v0

    move/from16 v17, v1

    invoke-static/range {v9 .. v18}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BLcom/android/gallery3d/exif/ExifInterface;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Z

    .line 755
    :goto_a
    goto :goto_b

    .line 706
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 755
    :cond_b
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-eqz v0, :cond_d

    .line 756
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 758
    :try_start_2
    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 759
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 760
    if-eqz v1, :cond_c

    .line 761
    iput-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 763
    :cond_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 766
    goto :goto_b

    .line 764
    :catch_0
    move-exception v0

    .line 765
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 768
    :cond_d
    :goto_b
    return v8

    .line 684
    :cond_e
    :goto_c
    iget v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    div-int/2addr v2, v4

    iput v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 685
    iget v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    div-int/2addr v2, v4

    iput v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 686
    mul-int/lit8 v3, v3, 0x2

    goto/16 :goto_0
.end method

.method private drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 25

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 772
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-nez v0, :cond_0

    .line 773
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 774
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->addAlgorithmComment(Ljava/lang/String;)Z

    .line 779
    :cond_0
    new-instance v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {v8, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V

    .line 780
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    .line 781
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawThumbJpeg: thumbLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v3, "null"

    goto :goto_0

    :cond_1
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    if-eqz v0, :cond_2

    .line 783
    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setCompressedThumbnail([B)Z

    .line 784
    nop

    .line 787
    :cond_2
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 789
    move/from16 v21, v1

    goto :goto_1

    .line 787
    :cond_3
    const/4 v0, 0x0

    .line 789
    move/from16 v21, v0

    :goto_1
    if-eqz p2, :cond_4

    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 790
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v9

    iget-object v10, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v11, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v13, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v14, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 795
    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v15

    iget v0, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v2, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    const/16 v24, 0x0

    .line 790
    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v23, v3

    invoke-static/range {v9 .. v24}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZZZZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    .line 805
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 806
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/android/camera/ActivityBase;->addSecureUri(Landroid/net/Uri;)V

    .line 809
    :cond_4
    return v1
.end method

.method private drawWaterMark(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IIIIIII)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 479
    move/from16 v12, p8

    invoke-static {}, Lcom/mi/config/b;->gL()Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    return-void

    .line 483
    :cond_0
    iget-object v4, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 484
    iget-object v4, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    .line 486
    invoke-static {}, Lcom/mi/config/b;->fR()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    new-instance v5, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;

    invoke-direct {v5, v4, v6, v7, v12}, Lcom/android/camera/effect/renders/NewStyleTextWaterMark;-><init>(Ljava/lang/String;III)V

    goto :goto_0

    .line 489
    :cond_1
    new-instance v5, Lcom/android/camera/effect/renders/TextWaterMark;

    invoke-direct {v5, v4, v6, v7, v12}, Lcom/android/camera/effect/renders/TextWaterMark;-><init>(Ljava/lang/String;III)V

    .line 491
    :goto_0
    invoke-direct {v0, v5, v2, v3, v12}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 494
    :cond_2
    iget-boolean v1, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDualCameraWaterMarkEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 496
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWatermark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 497
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v5, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 498
    :cond_3
    new-instance v1, Lcom/android/camera/effect/renders/ImageWaterMark;

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 500
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v9

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 501
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v10

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 502
    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v11

    move-object v4, v1

    move v8, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/effect/renders/ImageWaterMark;-><init>(Landroid/graphics/Bitmap;IIIFFF)V

    .line 503
    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 505
    :cond_4
    return-void
.end method

.method private drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V
    .locals 6

    .line 461
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 462
    if-eqz p4, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    neg-int p4, p4

    int-to-float p4, p4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2, v2, v1}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    .line 465
    iget-object p4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p4}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    neg-int v0, p2

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    neg-int v1, p3

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p4, v0, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 467
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getLeft()I

    move-result p4

    add-int v2, p2, p4

    .line 468
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTop()I

    move-result p2

    add-int v3, p3, p2

    .line 469
    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p2}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object p2

    new-instance p3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    .line 472
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v4

    .line 473
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    .line 469
    invoke-virtual {p2, p3}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 474
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p1}, Lcom/android/camera/effect/SnapshotCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 475
    return-void
.end method

.method private fetchRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    .line 630
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    .line 631
    if-nez v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/camera/effect/SnapshotCanvas;->prepareEffectRenders(ZI)V

    .line 633
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    .line 635
    :cond_0
    return-object v1
.end method

.method private getEffectRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 4

    .line 639
    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 641
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v1, :cond_0

    .line 642
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 648
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGradienterOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GRADIENTER:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_1

    .line 651
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 653
    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 654
    const/4 v1, 0x0

    .line 656
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    .line 657
    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    .line 658
    const v3, 0x7f0b014f

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 660
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    goto :goto_0

    .line 661
    :cond_3
    const v3, 0x7f0b0150

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 663
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    .line 665
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 666
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 671
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/PipeRender;->getRenderSize()I

    move-result v1

    if-nez v1, :cond_6

    .line 672
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/PipeRender;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 674
    :cond_6
    return-object v0
.end method

.method private initEGL()V
    .locals 10

    .line 423
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$502(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGL10;)Ljavax/microedition/khronos/egl/EGL10;

    .line 424
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$602(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 425
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_4

    .line 428
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 429
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EGL version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 435
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$900(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 436
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v8

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v8, v9, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 439
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v2, v3, :cond_2

    .line 443
    const/4 v2, 0x5

    new-array v2, v2, [I

    const/16 v3, 0x3057

    aput v3, v2, v4

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    aput v3, v2, v5

    const/16 v3, 0x3056

    aput v3, v2, v0

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    aput v0, v2, v1

    const/4 v0, 0x4

    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 448
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 449
    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    .line 448
    invoke-interface {v1, v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 450
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to eglMakeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to createWindowSurface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to createContext"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private release()V
    .locals 6

    .line 823
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/storage/ImageSaver;

    .line 824
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2302(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z

    .line 825
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z

    .line 826
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 827
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 828
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 830
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 831
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 832
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 833
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$602(Lcom/android/camera/effect/renders/SnapshotEffectRender;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 834
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$002(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/ActivityBase;)Lcom/android/camera/ActivityBase;

    .line 835
    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 836
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 837
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->recycledResources()V

    .line 838
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 839
    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    .line 840
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 416
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/effect/SnapshotCanvas;->prepareEffectRenders(ZI)V

    goto/16 :goto_2

    .line 413
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->release()V

    .line 414
    goto/16 :goto_2

    .line 409
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 410
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 411
    goto/16 :goto_2

    .line 406
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 407
    goto/16 :goto_2

    .line 395
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .line 396
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_1

    .line 397
    move v3, v2

    goto :goto_0

    .line 396
    :cond_1
    nop

    .line 397
    move v3, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_2

    goto :goto_1

    .line 398
    :cond_2
    move v2, v1

    :goto_1
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 399
    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 401
    :cond_3
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z

    .line 402
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p1}, Lcom/android/camera/effect/SnapshotCanvas;->recycledResources()V

    .line 403
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 404
    goto :goto_2

    .line 385
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z

    .line 386
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p1}, Lcom/android/camera/effect/SnapshotCanvas;->recycledResources()V

    .line 387
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 388
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->release()V

    .line 390
    :cond_5
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$410(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    .line 392
    monitor-exit p1

    .line 393
    goto :goto_2

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 378
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->initEGL()V

    .line 379
    new-instance p1, Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {p1}, Lcom/android/camera/effect/SnapshotCanvas;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    .line 380
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 381
    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v1

    .line 380
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/effect/SnapshotCanvas;->setSize(II)V

    .line 382
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 383
    nop

    .line 419
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->sendEmptyMessage(I)Z

    .line 846
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    .line 847
    return-void
.end method
