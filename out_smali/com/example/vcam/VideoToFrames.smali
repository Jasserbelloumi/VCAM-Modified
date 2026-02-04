.class public Lcom/example/vcam/VideoToFrames;
.super Ljava/lang/Object;
.source "VideoToFrames.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/vcam/VideoToFrames$Callback;
    }
.end annotation


# static fields
.field private static final COLOR_FormatI420:I = 0x1

.field private static final COLOR_FormatNV21:I = 0x2

.field private static final DEFAULT_TIMEOUT_US:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "VideoToFrames"

.field private static final VERBOSE:Z = false


# instance fields
.field private callback:Lcom/example/vcam/VideoToFrames$Callback;

.field private childThread:Ljava/lang/Thread;

.field private final decodeColorFormat:I

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private outputImageFormat:Lcom/example/vcam/OutputImageFormat;

.field private play_surf:Landroid/view/Surface;

.field private stopDecode:Z

.field private throwable:Ljava/lang/Throwable;

.field private videoFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f420888

    .line 33
    iput v0, p0, Lcom/example/vcam/VideoToFrames;->decodeColorFormat:I

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/example/vcam/VideoToFrames;->stopDecode:Z

    return-void
.end method

.method private decodeFramesToImage(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p3

    .line 162
    new-instance v10, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v10}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 163
    iget-object v2, v1, Lcom/example/vcam/VideoToFrames;->play_surf:Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v0, v2, v3, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaCodec;->start()V

    const-string v2, "width"

    .line 167
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    const-string v2, "height"

    .line 168
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    :goto_26
    if-nez v0, :cond_123

    .line 170
    iget-boolean v2, v1, Lcom/example/vcam/VideoToFrames;->stopDecode:Z

    if-nez v2, :cond_123

    const-wide/16 v6, 0x2710

    const/4 v8, 0x1

    if-nez v14, :cond_6b

    .line 172
    invoke-virtual {v9, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ltz v3, :cond_6b

    .line 174
    invoke-virtual {v9, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v5, p2

    .line 175
    invoke-virtual {v5, v2, v11}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v19

    if-gez v19, :cond_56

    const/4 v4, 0x0

    const/4 v14, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    move-object/from16 v2, p1

    move v5, v14

    move-wide v12, v6

    move-wide/from16 v6, v19

    const/4 v14, 0x1

    move/from16 v8, v21

    .line 177
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_6c

    :cond_56
    move-wide v12, v6

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const/4 v4, 0x0

    const/16 v20, 0x0

    move-object/from16 v2, p1

    move/from16 v5, v19

    move/from16 v8, v20

    .line 181
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_6c

    :cond_6b
    move-wide v12, v6

    .line 186
    :goto_6c
    invoke-virtual {v9, v10, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    if-ltz v2, :cond_11f

    .line 188
    iget v3, v10, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_7a

    const/4 v3, 0x1

    goto :goto_7b

    :cond_7a
    move v3, v0

    .line 191
    :goto_7b
    iget v0, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_81

    const/4 v8, 0x1

    goto :goto_82

    :cond_81
    const/4 v8, 0x0

    :goto_82
    if-eqz v8, :cond_11a

    add-int/lit8 v15, v15, 0x1

    .line 194
    iget-object v0, v1, Lcom/example/vcam/VideoToFrames;->callback:Lcom/example/vcam/VideoToFrames$Callback;

    if-eqz v0, :cond_8d

    .line 195
    invoke-interface {v0, v15}, Lcom/example/vcam/VideoToFrames$Callback;->onDecodeFrame(I)V

    :cond_8d
    if-nez v16, :cond_97

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide/from16 v17, v4

    const/16 v16, 0x1

    .line 201
    :cond_97
    iget-object v0, v1, Lcom/example/vcam/VideoToFrames;->play_surf:Landroid/view/Surface;

    const-string v4, "\u3010VCAM\u3011"

    if-nez v0, :cond_e2

    .line 202
    invoke-virtual {v9, v2}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v5

    .line 203
    invoke-virtual {v5}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v11

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [B

    .line 205
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v0, v1, Lcom/example/vcam/VideoToFrames;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_d4

    .line 208
    :try_start_b8
    invoke-virtual {v0, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_d4

    :catch_bc
    move-exception v0

    move-object v6, v0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 213
    :cond_d4
    :goto_d4
    iget-object v0, v1, Lcom/example/vcam/VideoToFrames;->outputImageFormat:Lcom/example/vcam/OutputImageFormat;

    if-eqz v0, :cond_df

    const/4 v0, 0x2

    .line 214
    invoke-static {v5, v0}, Lcom/example/vcam/VideoToFrames;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object v0

    sput-object v0, Lcom/example/vcam/HookMain;->data_buffer:[B

    .line 216
    :cond_df
    invoke-virtual {v5}, Landroid/media/Image;->close()V

    .line 218
    :cond_e2
    iget-wide v5, v10, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v17

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_115

    .line 221
    :try_start_f4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f7
    .catch Ljava/lang/InterruptedException; {:try_start_f4 .. :try_end_f7} :catch_f8

    goto :goto_115

    :catch_f8
    move-exception v0

    move-object v5, v0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    const-string v0, "\u3010VCAM\u3011\u7ebf\u7a0b\u5ef6\u8fdf\u51fa\u9519"

    .line 224
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_115
    :goto_115
    const/4 v4, 0x1

    .line 227
    invoke-virtual {v9, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_11c

    :cond_11a
    const-wide/16 v7, 0x0

    :goto_11c
    move v0, v3

    goto/16 :goto_26

    :cond_11f
    const-wide/16 v7, 0x0

    goto/16 :goto_26

    .line 231
    :cond_123
    iget-object v0, v1, Lcom/example/vcam/VideoToFrames;->callback:Lcom/example/vcam/VideoToFrames$Callback;

    if-eqz v0, :cond_12a

    .line 232
    invoke-interface {v0}, Lcom/example/vcam/VideoToFrames$Callback;->onFinishDecode()V

    :cond_12a
    return-void
.end method

.method private static getDataFromImage(Landroid/media/Image;I)[B
    .registers 22

    move/from16 v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    if-ne v0, v1, :cond_9

    goto :goto_11

    .line 264
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support COLOR_FormatI420 and COLOR_FormatNV21"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_11
    :goto_11
    invoke-static/range {p0 .. p0}, Lcom/example/vcam/VideoToFrames;->isImageFormatSupported(Landroid/media/Image;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 271
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    mul-int v8, v5, v6

    .line 274
    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int v4, v4, v8

    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    const/4 v9, 0x0

    .line 275
    aget-object v10, v7, v9

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    new-array v10, v10, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 279
    :goto_43
    array-length v14, v7

    if-ge v11, v14, :cond_dc

    if-eqz v11, :cond_64

    if-eq v11, v2, :cond_5a

    if-eq v11, v1, :cond_4d

    goto :goto_66

    :cond_4d
    if-ne v0, v2, :cond_56

    int-to-double v12, v8

    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    mul-double v12, v12, v14

    double-to-int v12, v12

    goto :goto_65

    :cond_56
    if-ne v0, v1, :cond_66

    move v12, v8

    goto :goto_62

    :cond_5a
    if-ne v0, v2, :cond_5e

    move v12, v8

    goto :goto_65

    :cond_5e
    if-ne v0, v1, :cond_66

    add-int/lit8 v12, v8, 0x1

    :goto_62
    const/4 v13, 0x2

    goto :goto_66

    :cond_64
    const/4 v12, 0x0

    :goto_65
    const/4 v13, 0x1

    .line 304
    :cond_66
    :goto_66
    aget-object v14, v7, v11

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 305
    aget-object v15, v7, v11

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    .line 306
    aget-object v16, v7, v11

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-nez v11, :cond_7d

    const/16 v16, 0x0

    goto :goto_7f

    :cond_7d
    const/16 v16, 0x1

    :goto_7f
    shr-int v9, v5, v16

    shr-int v2, v6, v16

    .line 317
    iget v0, v3, Landroid/graphics/Rect;->top:I

    shr-int v0, v0, v16

    mul-int v0, v0, v15

    move/from16 v18, v5

    iget v5, v3, Landroid/graphics/Rect;->left:I

    shr-int v5, v5, v16

    mul-int v5, v5, v1

    add-int/2addr v0, v5

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_96
    if-ge v0, v2, :cond_cf

    const/4 v5, 0x1

    if-ne v1, v5, :cond_a5

    if-ne v13, v5, :cond_a5

    .line 322
    invoke-virtual {v14, v4, v12, v9}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v12, v9

    move-object/from16 v17, v3

    move v3, v9

    goto :goto_bd

    :cond_a5
    add-int/lit8 v16, v9, -0x1

    mul-int v16, v16, v1

    move-object/from16 v17, v3

    add-int/lit8 v3, v16, 0x1

    const/4 v5, 0x0

    .line 326
    invoke-virtual {v14, v10, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_b1
    if-ge v5, v9, :cond_bd

    mul-int v19, v5, v1

    .line 328
    aget-byte v19, v10, v19

    aput-byte v19, v4, v12

    add-int/2addr v12, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_b1

    :cond_bd
    :goto_bd
    add-int/lit8 v5, v2, -0x1

    if-ge v0, v5, :cond_ca

    .line 333
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v15

    sub-int/2addr v5, v3

    invoke-virtual {v14, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_ca
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v17

    goto :goto_96

    :cond_cf
    move-object/from16 v17, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p1

    move/from16 v5, v18

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto/16 :goto_43

    :cond_dc
    return-object v4

    .line 267
    :cond_dd
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t convert Image to byte array, format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isColorFormatSupported(ILandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .registers 7

    .line 151
    iget-object p2, p2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_10

    aget v3, p2, v2

    if-ne v3, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    return v1
.end method

.method private static isImageFormatSupported(Landroid/media/Image;)Z
    .registers 2

    .line 252
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_13

    const/16 v0, 0x23

    if-eq p0, v0, :cond_13

    const v0, 0x32315659

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private static selectTrack(Landroid/media/MediaExtractor;)I
    .registers 5

    .line 237
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1d

    .line 239
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 240
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method

.method private showSupportedColorFormat(Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 7

    .line 143
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "supported color format: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 144
    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_28

    aget v2, p1, v1

    .line 145
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 147
    :cond_28
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/example/vcam/VideoToFrames;->videoFilePath:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/example/vcam/VideoToFrames;->childThread:Ljava/lang/Thread;

    if-nez p1, :cond_18

    .line 79
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "decode"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/example/vcam/VideoToFrames;->childThread:Ljava/lang/Thread;

    .line 80
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 81
    iget-object p1, p0, Lcom/example/vcam/VideoToFrames;->throwable:Ljava/lang/Throwable;

    if-nez p1, :cond_17

    goto :goto_18

    .line 82
    :cond_17
    throw p1

    :cond_18
    :goto_18
    return-void
.end method

.method public run()V
    .registers 2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/example/vcam/VideoToFrames;->videoFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/example/vcam/VideoToFrames;->videoDecode(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    .line 91
    iput-object v0, p0, Lcom/example/vcam/VideoToFrames;->throwable:Ljava/lang/Throwable;

    :goto_9
    return-void
.end method

.method public setCallback(Lcom/example/vcam/VideoToFrames$Callback;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/example/vcam/VideoToFrames;->callback:Lcom/example/vcam/VideoToFrames$Callback;

    return-void
.end method

.method public setEnqueue(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/example/vcam/VideoToFrames;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public setSaveFrames(Ljava/lang/String;Lcom/example/vcam/OutputImageFormat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iput-object p2, p0, Lcom/example/vcam/VideoToFrames;->outputImageFormat:Lcom/example/vcam/OutputImageFormat;

    return-void
.end method

.method public set_surfcae(Landroid/view/Surface;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 68
    iput-object p1, p0, Lcom/example/vcam/VideoToFrames;->play_surf:Landroid/view/Surface;

    :cond_4
    return-void
.end method

.method public stopDecode()V
    .registers 2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/example/vcam/VideoToFrames;->stopDecode:Z

    return-void
.end method

.method public videoDecode(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\u3010VCAM\u3011\u3010decoder\u3011\u5f00\u59cb\u89e3\u7801"

    .line 97
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_96
    .catchall {:try_start_6 .. :try_end_10} :catchall_93

    .line 103
    :try_start_10
    invoke-virtual {v1, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 104
    invoke-static {v1}, Lcom/example/vcam/VideoToFrames;->selectTrack(Landroid/media/MediaExtractor;)I

    move-result v2

    if-gez v2, :cond_2d

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010VCAM\u3011\u3010decoder\u3011No video track found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 108
    :cond_2d
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 109
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v2, "mime"

    .line 110
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/example/vcam/VideoToFrames;->showSupportedColorFormat(Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 113
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    const v3, 0x7f420888

    invoke-direct {p0, v3, v2}, Lcom/example/vcam/VideoToFrames;->isColorFormatSupported(ILandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "color-format"

    .line 114
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "\u3010VCAM\u3011\u3010decoder\u3011set decode color format to type 2135033992"

    .line 115
    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_71

    :cond_65
    const-string v2, "VideoToFrames"

    const-string v3, "unable to set decode color format, color format type 2135033992 not supported"

    .line 117
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "\u3010VCAM\u3011\u3010decoder\u3011unable to set decode color format, color format type 2135033992 not supported"

    .line 118
    invoke-static {v2}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 120
    :goto_71
    invoke-direct {p0, v0, v1, p1}, Lcom/example/vcam/VideoToFrames;->decodeFramesToImage(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V

    .line 121
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 122
    :goto_77
    iget-boolean v2, p0, Lcom/example/vcam/VideoToFrames;->stopDecode:Z

    if-nez v2, :cond_88

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 123
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 124
    invoke-direct {p0, v0, v1, p1}, Lcom/example/vcam/VideoToFrames;->decodeFramesToImage(Landroid/media/MediaCodec;Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V

    .line 125
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_87} :catch_91
    .catchall {:try_start_10 .. :try_end_87} :catchall_be

    goto :goto_77

    :cond_88
    if-eqz v0, :cond_ba

    .line 131
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 132
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_ba

    :catch_91
    move-exception p1

    goto :goto_98

    :catchall_93
    move-exception p1

    move-object v1, v0

    goto :goto_bf

    :catch_96
    move-exception p1

    move-object v1, v0

    .line 128
    :goto_98
    :try_start_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010VCAM\u3011[videofile]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_98 .. :try_end_b0} :catchall_be

    if-eqz v0, :cond_b8

    .line 131
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 132
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_b8
    if-eqz v1, :cond_bd

    .line 136
    :cond_ba
    :goto_ba
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_bd
    return-void

    :catchall_be
    move-exception p1

    :goto_bf
    if-eqz v0, :cond_c7

    .line 131
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 132
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_c7
    if-eqz v1, :cond_cc

    .line 136
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 139
    :cond_cc
    throw p1
.end method
