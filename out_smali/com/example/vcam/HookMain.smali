.class public Lcom/example/vcam/HookMain;
.super Ljava/lang/Object;
.source "HookMain.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field public static c1_fake_surface:Landroid/view/Surface; = null

.field public static c1_fake_texture:Landroid/graphics/SurfaceTexture; = null

.field public static c2_builder:Landroid/hardware/camera2/CaptureRequest$Builder; = null

.field public static c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames; = null

.field public static c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames; = null

.field public static c2_player:Landroid/media/MediaPlayer; = null

.field public static c2_player_1:Landroid/media/MediaPlayer; = null

.field public static c2_preview_Surfcae:Landroid/view/Surface; = null

.field public static c2_preview_Surfcae_1:Landroid/view/Surface; = null

.field public static c2_reader_Surfcae:Landroid/view/Surface; = null

.field public static c2_reader_Surfcae_1:Landroid/view/Surface; = null

.field public static c2_state_callback:Ljava/lang/Class; = null

.field public static c2_state_cb:Landroid/hardware/camera2/CameraDevice$StateCallback; = null

.field public static c2_virtual_surface:Landroid/view/Surface; = null

.field public static c2_virtual_surfaceTexture:Landroid/graphics/SurfaceTexture; = null

.field public static camera_callback_calss:Ljava/lang/Class; = null

.field public static camera_onPreviewFrame:Landroid/hardware/Camera; = null

.field public static volatile data_buffer:[B = null

.field public static fake_SurfaceTexture:Landroid/graphics/SurfaceTexture; = null

.field public static fake_sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration; = null

.field public static hw_decode_obj:Lcom/example/vcam/VideoToFrames; = null

.field public static input:[B = null

.field public static is_first_hook_build:Z = true

.field public static is_hooked:Z = false

.field public static is_someone_playing:Z = false

.field public static mMediaPlayer:Landroid/media/MediaPlayer; = null

.field public static mSurface:Landroid/view/Surface; = null

.field public static mSurfacetexture:Landroid/graphics/SurfaceTexture; = null

.field public static mcamera1:Landroid/hardware/Camera; = null

.field public static mhight:I = 0x0

.field public static mplayer1:Landroid/media/MediaPlayer; = null

.field public static mwidth:I = 0x0

.field public static onemhight:I = 0x0

.field public static onemwidth:I = 0x0

.field public static ori_holder:Landroid/view/SurfaceHolder; = null

.field public static origin_preview_camera:Landroid/hardware/Camera; = null

.field public static outputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration; = null

.field public static sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration; = null

.field public static start_preview_camera:Landroid/hardware/Camera; = null

.field public static video_path:Ljava/lang/String; = "/storage/emulated/0/DCIM/Camera1/"


# instance fields
.field public c2_ori_height:I

.field public c2_ori_width:I

.field public imageReaderFormat:I

.field public need_recreate:Z

.field public need_to_show_toast:Z

.field public toast_content:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 54
    sput-object v0, Lcom/example/vcam/HookMain;->data_buffer:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/example/vcam/HookMain;->imageReaderFormat:I

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    const/16 v0, 0x500

    .line 93
    iput v0, p0, Lcom/example/vcam/HookMain;->c2_ori_width:I

    const/16 v0, 0x2d0

    .line 94
    iput v0, p0, Lcom/example/vcam/HookMain;->c2_ori_height:I

    return-void
.end method

.method static synthetic access$000(Lcom/example/vcam/HookMain;Ljava/lang/Class;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/example/vcam/HookMain;->process_camera2_init(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/example/vcam/HookMain;->process_callback(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static synthetic access$200(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/example/vcam/HookMain;->process_a_shot_YUV(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static synthetic access$300(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;I)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/example/vcam/HookMain;->process_a_shot_jpeg(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/example/vcam/HookMain;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/example/vcam/HookMain;->process_camera2_play()V

    return-void
.end method

.method static synthetic access$500(Lcom/example/vcam/HookMain;)Landroid/view/Surface;
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/example/vcam/HookMain;->create_virtual_surface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/example/vcam/HookMain;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/example/vcam/HookMain;->process_camera2Session_callback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/example/vcam/HookMain;Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/example/vcam/HookMain;->pickRandomImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/example/vcam/HookMain;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/example/vcam/HookMain;->getBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Landroid/graphics/Bitmap;)[B
    .registers 1

    .line 45
    invoke-static {p0}, Lcom/example/vcam/HookMain;->getYUVByBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method private create_virtual_surface()Landroid/view/Surface;
    .registers 3

    .line 793
    iget-boolean v0, p0, Lcom/example/vcam/HookMain;->need_recreate:Z

    if-eqz v0, :cond_2d

    .line 794
    sget-object v0, Lcom/example/vcam/HookMain;->c2_virtual_surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 795
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 796
    sput-object v1, Lcom/example/vcam/HookMain;->c2_virtual_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 798
    :cond_e
    sget-object v0, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    if-eqz v0, :cond_17

    .line 799
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 800
    sput-object v1, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    .line 802
    :cond_17
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Lcom/example/vcam/HookMain;->c2_virtual_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 803
    new-instance v0, Landroid/view/Surface;

    sget-object v1, Lcom/example/vcam/HookMain;->c2_virtual_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object v0, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    const/4 v0, 0x0

    .line 804
    iput-boolean v0, p0, Lcom/example/vcam/HookMain;->need_recreate:Z

    goto :goto_3a

    .line 806
    :cond_2d
    sget-object v0, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    .line 807
    iput-boolean v0, p0, Lcom/example/vcam/HookMain;->need_recreate:Z

    .line 808
    invoke-direct {p0}, Lcom/example/vcam/HookMain;->create_virtual_surface()Landroid/view/Surface;

    move-result-object v0

    sput-object v0, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    .line 811
    :cond_3a
    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010VCAM\u3011\u3010\u91cd\u5efa\u5783\u573e\u573a\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 812
    sget-object v0, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    return-object v0
.end method

.method private getBMP(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1229
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static getYUVByBitmap(Landroid/graphics/Bitmap;)[B
    .registers 12

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1263
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1264
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 1266
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 1267
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1268
    invoke-static {v10, v8, v9}, Lcom/example/vcam/HookMain;->rgb2YCbCr420([III)[B

    move-result-object p0

    return-object p0
.end method

.method private pickRandomImageFile(Ljava/lang/String;)Ljava/io/File;
    .registers 10

    .line 1016
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_85

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_85

    .line 1022
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010VCAM\u3011\u65e0\u6cd5\u5217\u51fa\u76ee\u5f55\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-object v2

    .line 1028
    :cond_2e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    array-length v3, v0

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v3, :cond_57

    aget-object v5, v0, v4

    if-eqz v5, :cond_54

    .line 1030
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".bmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 1031
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 1035
    :cond_57
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010VCAM\u3011\u76ee\u5f55\u4e2d\u6ca1\u6709\u53ef\u7528\u7684BMP\u6587\u4ef6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-object v2

    .line 1040
    :cond_72
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p1

    .line 1041
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1

    .line 1018
    :cond_85
    :goto_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010VCAM\u3011\u56fe\u50cf\u76ee\u5f55\u4e0d\u5b58\u5728\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-object v2
.end method

.method private process_a_shot_YUV(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    const/4 v0, 0x1

    .line 1094
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010VCAM\u3011\u53d1\u73b0\u62cd\u7167YUV:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_33

    :catch_1e
    move-exception v1

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010VCAM\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1098
    :goto_33
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1099
    const-class v3, [B

    aput-object v3, v1, v2

    const-class v2, Landroid/hardware/Camera;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lcom/example/vcam/HookMain$24;

    invoke-direct {v2, p0}, Lcom/example/vcam/HookMain$24;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v2, v1, v0

    const-string v0, "onPictureTaken"

    invoke-static {p1, v0, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private process_a_shot_jpeg(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;I)V
    .registers 6

    .line 1046
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010VCAM\u3011\u7b2c\u4e8c\u4e2ajpeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_32

    :catch_1d
    move-exception v0

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010VCAM\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 1051
    :goto_32
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1053
    const-class v1, [B

    aput-object v1, p2, v0

    const/4 v0, 0x1

    const-class v1, Landroid/hardware/Camera;

    aput-object v1, p2, v0

    const/4 v0, 0x2

    new-instance v1, Lcom/example/vcam/HookMain$23;

    invoke-direct {v1, p0}, Lcom/example/vcam/HookMain$23;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v1, p2, v0

    const-string v0, "onPictureTaken"

    invoke-static {p1, v0, p2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private process_callback(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8

    .line 1135
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 1137
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DCIM/Camera1/disable.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1141
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "virtual.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/DCIM/Camera1/no_toast.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    .line 1144
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b6

    .line 1145
    iget-object v1, p0, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    if-eqz v1, :cond_b5

    iget-boolean v2, p0, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    if-eqz v2, :cond_b5

    .line 1147
    :try_start_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0d\u5b58\u5728\u66ff\u6362\u89c6\u9891\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u8def\u5f84\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_9f} :catch_a0

    goto :goto_b5

    :catch_a0
    move-exception v1

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010VCAM\u3011[toast]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_b5
    :goto_b5
    const/4 v1, 0x1

    :cond_b6
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1155
    const-class v3, [B

    aput-object v3, v2, v0

    const-class v0, Landroid/hardware/Camera;

    aput-object v0, v2, v4

    const/4 v0, 0x2

    new-instance v3, Lcom/example/vcam/HookMain$25;

    invoke-direct {v3, p0, p1, v1}, Lcom/example/vcam/HookMain$25;-><init>(Lcom/example/vcam/HookMain;Ljava/lang/Class;I)V

    aput-object v3, v2, v0

    const-string v0, "onPreviewFrame"

    invoke-static {p1, v0, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private process_camera2Session_callback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 1202
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/example/vcam/HookMain$26;

    invoke-direct {v3, p0}, Lcom/example/vcam/HookMain$26;-><init>(Lcom/example/vcam/HookMain;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "onConfigureFailed"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v3, v2, v4

    new-instance v3, Lcom/example/vcam/HookMain$27;

    invoke-direct {v3, p0}, Lcom/example/vcam/HookMain$27;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v3, v2, v5

    const-string v3, "onConfigured"

    invoke-static {v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-class v1, Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v1, v0, v4

    new-instance v1, Lcom/example/vcam/HookMain$28;

    invoke-direct {v1, p0}, Lcom/example/vcam/HookMain$28;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v1, v0, v5

    const-string v1, "onClosed"

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private process_camera2_init(Ljava/lang/Class;)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 817
    const-class v2, Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/example/vcam/HookMain$20;

    invoke-direct {v2, p0}, Lcom/example/vcam/HookMain$20;-><init>(Lcom/example/vcam/HookMain;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "onOpened"

    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 995
    const-class v2, Landroid/hardware/camera2/CameraDevice;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-instance v2, Lcom/example/vcam/HookMain$21;

    invoke-direct {v2, p0}, Lcom/example/vcam/HookMain$21;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v2, v1, v0

    const-string v2, "onError"

    invoke-static {p1, v2, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    new-array v0, v0, [Ljava/lang/Object;

    .line 1004
    const-class v1, Landroid/hardware/camera2/CameraDevice;

    aput-object v1, v0, v3

    new-instance v1, Lcom/example/vcam/HookMain$22;

    invoke-direct {v1, p0}, Lcom/example/vcam/HookMain$22;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v1, v0, v4

    const-string v1, "onDisconnected"

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method private process_camera2_play()V
    .registers 9

    .line 695
    sget-object v0, Lcom/example/vcam/HookMain;->c2_reader_Surfcae:Landroid/view/Surface;

    const-string v1, "\u3010VCAM\u3011"

    const/16 v2, 0x100

    const/4 v3, 0x0

    const-string v4, "virtual.mp4"

    const-string v5, "null"

    if-eqz v0, :cond_5d

    .line 696
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    if-eqz v0, :cond_16

    .line 697
    invoke-virtual {v0}, Lcom/example/vcam/VideoToFrames;->stopDecode()V

    .line 698
    sput-object v3, Lcom/example/vcam/HookMain;->c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    .line 701
    :cond_16
    new-instance v0, Lcom/example/vcam/VideoToFrames;

    invoke-direct {v0}, Lcom/example/vcam/VideoToFrames;-><init>()V

    sput-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    .line 703
    :try_start_1d
    iget v6, p0, Lcom/example/vcam/HookMain;->imageReaderFormat:I

    if-ne v6, v2, :cond_27

    .line 704
    sget-object v6, Lcom/example/vcam/OutputImageFormat;->JPEG:Lcom/example/vcam/OutputImageFormat;

    invoke-virtual {v0, v5, v6}, Lcom/example/vcam/VideoToFrames;->setSaveFrames(Ljava/lang/String;Lcom/example/vcam/OutputImageFormat;)V

    goto :goto_2c

    .line 706
    :cond_27
    sget-object v6, Lcom/example/vcam/OutputImageFormat;->NV21:Lcom/example/vcam/OutputImageFormat;

    invoke-virtual {v0, v5, v6}, Lcom/example/vcam/VideoToFrames;->setSaveFrames(Ljava/lang/String;Lcom/example/vcam/OutputImageFormat;)V

    .line 708
    :goto_2c
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    sget-object v6, Lcom/example/vcam/HookMain;->c2_reader_Surfcae:Landroid/view/Surface;

    invoke-virtual {v0, v6}, Lcom/example/vcam/VideoToFrames;->set_surfcae(Landroid/view/Surface;)V

    .line 709
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/example/vcam/VideoToFrames;->decode(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_4a

    goto :goto_5d

    :catchall_4a
    move-exception v0

    .line 711
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 715
    :cond_5d
    :goto_5d
    sget-object v0, Lcom/example/vcam/HookMain;->c2_reader_Surfcae_1:Landroid/view/Surface;

    if-eqz v0, :cond_b1

    .line 716
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames;

    if-eqz v0, :cond_6a

    .line 717
    invoke-virtual {v0}, Lcom/example/vcam/VideoToFrames;->stopDecode()V

    .line 718
    sput-object v3, Lcom/example/vcam/HookMain;->c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames;

    .line 721
    :cond_6a
    new-instance v0, Lcom/example/vcam/VideoToFrames;

    invoke-direct {v0}, Lcom/example/vcam/VideoToFrames;-><init>()V

    sput-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames;

    .line 723
    :try_start_71
    iget v3, p0, Lcom/example/vcam/HookMain;->imageReaderFormat:I

    if-ne v3, v2, :cond_7b

    .line 724
    sget-object v2, Lcom/example/vcam/OutputImageFormat;->JPEG:Lcom/example/vcam/OutputImageFormat;

    invoke-virtual {v0, v5, v2}, Lcom/example/vcam/VideoToFrames;->setSaveFrames(Ljava/lang/String;Lcom/example/vcam/OutputImageFormat;)V

    goto :goto_80

    .line 726
    :cond_7b
    sget-object v2, Lcom/example/vcam/OutputImageFormat;->NV21:Lcom/example/vcam/OutputImageFormat;

    invoke-virtual {v0, v5, v2}, Lcom/example/vcam/VideoToFrames;->setSaveFrames(Ljava/lang/String;Lcom/example/vcam/OutputImageFormat;)V

    .line 728
    :goto_80
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames;

    sget-object v2, Lcom/example/vcam/HookMain;->c2_reader_Surfcae_1:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Lcom/example/vcam/VideoToFrames;->set_surfcae(Landroid/view/Surface;)V

    .line 729
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/example/vcam/VideoToFrames;->decode(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_71 .. :try_end_9d} :catchall_9e

    goto :goto_b1

    :catchall_9e
    move-exception v0

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 736
    :cond_b1
    :goto_b1
    sget-object v0, Lcom/example/vcam/HookMain;->c2_preview_Surfcae:Landroid/view/Surface;

    const-string v1, "]"

    const/4 v2, 0x1

    const-string v3, "/DCIM/Camera1/no-silent.jpg"

    const/4 v5, 0x0

    if-eqz v0, :cond_14b

    .line 737
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_c7

    .line 738
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    goto :goto_d1

    .line 740
    :cond_c7
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 741
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    .line 743
    :goto_d1
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    sget-object v6, Lcom/example/vcam/HookMain;->c2_preview_Surfcae:Landroid/view/Surface;

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 744
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_ff

    .line 746
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 748
    :cond_ff
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 751
    :try_start_104
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/example/vcam/HookMain$18;

    invoke-direct {v6, p0}, Lcom/example/vcam/HookMain$18;-><init>(Lcom/example/vcam/HookMain;)V

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 756
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 757
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_129} :catch_12a

    goto :goto_14b

    :catch_12a
    move-exception v0

    .line 759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u3010VCAM\u3011[c2player]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/example/vcam/HookMain;->c2_preview_Surfcae:Landroid/view/Surface;

    invoke-virtual {v7}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 763
    :cond_14b
    :goto_14b
    sget-object v0, Lcom/example/vcam/HookMain;->c2_preview_Surfcae_1:Landroid/view/Surface;

    if-eqz v0, :cond_1df

    .line 764
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    if-nez v0, :cond_15b

    .line 765
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    goto :goto_165

    .line 767
    :cond_15b
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 768
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    .line 770
    :goto_165
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    sget-object v6, Lcom/example/vcam/HookMain;->c2_preview_Surfcae_1:Landroid/view/Surface;

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 771
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_193

    .line 773
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 775
    :cond_193
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 778
    :try_start_198
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/example/vcam/HookMain$19;

    invoke-direct {v2, p0}, Lcom/example/vcam/HookMain$19;-><init>(Lcom/example/vcam/HookMain;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 783
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 784
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_1bd} :catch_1be

    goto :goto_1df

    :catch_1be
    move-exception v0

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010VCAM\u3011[c2player1][ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/example/vcam/HookMain;->c2_preview_Surfcae_1:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_1df
    :goto_1df
    const-string v0, "\u3010VCAM\u3011Camera2\u5904\u7406\u8fc7\u7a0b\u5b8c\u5168\u6267\u884c"

    .line 789
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static rgb2YCbCr420([III)[B
    .registers 19

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    mul-int/lit8 v3, v2, 0x3

    .line 1235
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v1, :cond_80

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v0, :cond_7d

    mul-int v7, v5, v0

    add-int/2addr v7, v6

    .line 1239
    aget v8, p0, v7

    const v9, 0xffffff

    and-int/2addr v8, v9

    and-int/lit16 v9, v8, 0xff

    shr-int/lit8 v10, v8, 0x8

    const/16 v11, 0xff

    and-int/2addr v10, v11

    const/16 v12, 0x10

    shr-int/2addr v8, v12

    and-int/2addr v8, v11

    mul-int/lit8 v13, v9, 0x42

    mul-int/lit16 v14, v10, 0x81

    add-int/2addr v13, v14

    mul-int/lit8 v14, v8, 0x19

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v12

    mul-int/lit8 v14, v9, -0x26

    mul-int/lit8 v15, v10, 0x4a

    sub-int/2addr v14, v15

    mul-int/lit8 v15, v8, 0x70

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit16 v14, v14, 0x80

    mul-int/lit8 v9, v9, 0x70

    mul-int/lit8 v10, v10, 0x5e

    sub-int/2addr v9, v10

    mul-int/lit8 v8, v8, 0x12

    sub-int/2addr v9, v8

    add-int/lit16 v9, v9, 0x80

    shr-int/lit8 v8, v9, 0x8

    add-int/lit16 v8, v8, 0x80

    if-ge v13, v12, :cond_53

    goto :goto_57

    .line 1247
    :cond_53
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_57
    if-gez v14, :cond_5b

    const/4 v9, 0x0

    goto :goto_5f

    .line 1248
    :cond_5b
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_5f
    if-gez v8, :cond_63

    const/4 v8, 0x0

    goto :goto_67

    .line 1249
    :cond_63
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_67
    int-to-byte v10, v12

    .line 1251
    aput-byte v10, v3, v7

    shr-int/lit8 v7, v5, 0x1

    mul-int v7, v7, v0

    add-int/2addr v7, v2

    and-int/lit8 v10, v6, -0x2

    add-int/2addr v7, v10

    int-to-byte v9, v9

    .line 1252
    aput-byte v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    int-to-byte v8, v8

    .line 1253
    aput-byte v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_80
    return-object v3
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-class v3, Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/example/vcam/HookMain$1;

    invoke-direct {v3, p0, p1}, Lcom/example/vcam/HookMain$1;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "android.hardware.Camera"

    const-string v6, "setPreviewTexture"

    invoke-static {v3, v0, v6, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 150
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/Object;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    const-class v7, Landroid/hardware/camera2/CameraDevice$StateCallback;

    aput-object v7, v6, v5

    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v1

    new-instance v7, Lcom/example/vcam/HookMain$2;

    invoke-direct {v7, p0, p1}, Lcom/example/vcam/HookMain$2;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string v7, "android.hardware.camera2.CameraManager"

    const-string v9, "openCamera"

    invoke-static {v7, v0, v9, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v0, v6, :cond_59

    .line 186
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v2, [Ljava/lang/Object;

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v4

    const-class v10, Ljava/util/concurrent/Executor;

    aput-object v10, v6, v5

    const-class v10, Landroid/hardware/camera2/CameraDevice$StateCallback;

    aput-object v10, v6, v1

    new-instance v10, Lcom/example/vcam/HookMain$3;

    invoke-direct {v10, p0, p1}, Lcom/example/vcam/HookMain$3;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v10, v6, v8

    invoke-static {v7, v0, v9, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 222
    :cond_59
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v1, [Ljava/lang/Object;

    const-class v7, Landroid/hardware/Camera$PreviewCallback;

    aput-object v7, v6, v4

    new-instance v7, Lcom/example/vcam/HookMain$4;

    invoke-direct {v7, p0}, Lcom/example/vcam/HookMain$4;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v7, v6, v5

    const-string v7, "setPreviewCallbackWithBuffer"

    invoke-static {v3, v0, v7, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 231
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v1, [Ljava/lang/Object;

    const-class v7, [B

    aput-object v7, v6, v4

    new-instance v7, Lcom/example/vcam/HookMain$5;

    invoke-direct {v7, p0}, Lcom/example/vcam/HookMain$5;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v7, v6, v5

    const-string v7, "addCallbackBuffer"

    invoke-static {v3, v0, v7, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 240
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v1, [Ljava/lang/Object;

    const-class v7, Landroid/hardware/Camera$PreviewCallback;

    aput-object v7, v6, v4

    new-instance v7, Lcom/example/vcam/HookMain$6;

    invoke-direct {v7, p0}, Lcom/example/vcam/HookMain$6;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v7, v6, v5

    const-string v7, "setPreviewCallback"

    invoke-static {v3, v0, v7, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 249
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v6, v1, [Ljava/lang/Object;

    const-class v7, Landroid/hardware/Camera$PreviewCallback;

    aput-object v7, v6, v4

    new-instance v7, Lcom/example/vcam/HookMain$7;

    invoke-direct {v7, p0}, Lcom/example/vcam/HookMain$7;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v7, v6, v5

    const-string v7, "setOneShotPreviewCallback"

    invoke-static {v3, v0, v7, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 258
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Object;

    const-class v9, Landroid/hardware/Camera$ShutterCallback;

    aput-object v9, v7, v4

    const-class v9, Landroid/hardware/Camera$PictureCallback;

    aput-object v9, v7, v5

    const-class v9, Landroid/hardware/Camera$PictureCallback;

    aput-object v9, v7, v1

    const-class v9, Landroid/hardware/Camera$PictureCallback;

    aput-object v9, v7, v8

    new-instance v9, Lcom/example/vcam/HookMain$8;

    invoke-direct {v9, p0}, Lcom/example/vcam/HookMain$8;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v9, v7, v2

    const-string v9, "takePicture"

    invoke-static {v3, v0, v9, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 272
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v1, [Ljava/lang/Object;

    const-class v9, Landroid/hardware/Camera;

    aput-object v9, v7, v4

    new-instance v9, Lcom/example/vcam/HookMain$9;

    invoke-direct {v9, p0, p1}, Lcom/example/vcam/HookMain$9;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v9, v7, v5

    const-string v9, "android.media.MediaRecorder"

    const-string v10, "setCamera"

    invoke-static {v9, v0, v10, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 289
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v1, [Ljava/lang/Object;

    const-class v9, Landroid/app/Application;

    aput-object v9, v7, v4

    new-instance v9, Lcom/example/vcam/HookMain$10;

    invoke-direct {v9, p0, p1}, Lcom/example/vcam/HookMain$10;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v9, v7, v5

    const-string v9, "android.app.Instrumentation"

    const-string v10, "callApplicationOnCreate"

    invoke-static {v9, v0, v10, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 361
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v5, [Ljava/lang/Object;

    new-instance v9, Lcom/example/vcam/HookMain$11;

    invoke-direct {v9, p0, p1}, Lcom/example/vcam/HookMain$11;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v9, v7, v4

    const-string v9, "startPreview"

    invoke-static {v3, v0, v9, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 465
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v7, v1, [Ljava/lang/Object;

    const-class v9, Landroid/view/SurfaceHolder;

    aput-object v9, v7, v4

    new-instance v9, Lcom/example/vcam/HookMain$12;

    invoke-direct {v9, p0, p1}, Lcom/example/vcam/HookMain$12;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v9, v7, v5

    const-string v9, "setPreviewDisplay"

    invoke-static {v3, v0, v9, v7}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 509
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v3, v1, [Ljava/lang/Object;

    const-class v7, Landroid/view/Surface;

    aput-object v7, v3, v4

    new-instance v7, Lcom/example/vcam/HookMain$13;

    invoke-direct {v7, p0, p1}, Lcom/example/vcam/HookMain$13;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v7, v3, v5

    const-string v7, "android.hardware.camera2.CaptureRequest.Builder"

    const-string v9, "addTarget"

    invoke-static {v7, v0, v9, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 563
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v3, v1, [Ljava/lang/Object;

    const-class v9, Landroid/view/Surface;

    aput-object v9, v3, v4

    new-instance v9, Lcom/example/vcam/HookMain$14;

    invoke-direct {v9, p0, p1}, Lcom/example/vcam/HookMain$14;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v9, v3, v5

    const-string v9, "removeTarget"

    invoke-static {v7, v0, v9, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 608
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v9, Lcom/example/vcam/HookMain$15;

    invoke-direct {v9, p0, p1}, Lcom/example/vcam/HookMain$15;-><init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V

    aput-object v9, v3, v4

    const-string v9, "build"

    invoke-static {v7, v0, v9, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 663
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v8

    new-instance v6, Lcom/example/vcam/HookMain$16;

    invoke-direct {v6, p0}, Lcom/example/vcam/HookMain$16;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v6, v3, v2

    const-string v6, "android.media.ImageReader"

    const-string v7, "newInstance"

    invoke-static {v6, v0, v7, v3}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 683
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v0, v2, [Ljava/lang/Object;

    const-class v2, Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v2, v0, v4

    const-class v2, Landroid/hardware/camera2/CaptureRequest;

    aput-object v2, v0, v5

    const-class v2, Landroid/hardware/camera2/CaptureFailure;

    aput-object v2, v0, v1

    new-instance v1, Lcom/example/vcam/HookMain$17;

    invoke-direct {v1, p0}, Lcom/example/vcam/HookMain$17;-><init>(Lcom/example/vcam/HookMain;)V

    aput-object v1, v0, v8

    const-string v1, "android.hardware.camera2.CameraCaptureSession.CaptureCallback"

    const-string v2, "onCaptureFailed"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method
