.class Lcom/example/vcam/HookMain$11;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/vcam/HookMain;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/vcam/HookMain;

.field final synthetic val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;


# direct methods
.method constructor <init>(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 3

    .line 361
    iput-object p1, p0, Lcom/example/vcam/HookMain$11;->this$0:Lcom/example/vcam/HookMain;

    iput-object p2, p0, Lcom/example/vcam/HookMain$11;->val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "virtual.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/DCIM/Camera1/no_toast.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    iget-object v3, p0, Lcom/example/vcam/HookMain$11;->this$0:Lcom/example/vcam/HookMain;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    iput-boolean v1, v3, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    .line 367
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_98

    .line 368
    iget-object p1, p0, Lcom/example/vcam/HookMain$11;->this$0:Lcom/example/vcam/HookMain;

    iget-object p1, p1, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    if-eqz p1, :cond_97

    iget-object p1, p0, Lcom/example/vcam/HookMain$11;->this$0:Lcom/example/vcam/HookMain;

    iget-boolean p1, p1, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    if-eqz p1, :cond_97

    .line 370
    :try_start_53
    iget-object p1, p0, Lcom/example/vcam/HookMain$11;->this$0:Lcom/example/vcam/HookMain;

    iget-object p1, p1, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u5b58\u5728\u66ff\u6362\u89c6\u9891\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/vcam/HookMain$11;->val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v2, v2, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u8def\u5f84\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_7d} :catch_7e

    goto :goto_97

    :catch_7e
    move-exception p1

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u3010VCAM\u3011[toast]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-void

    .line 377
    :cond_98
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/DCIM/Camera1/disable.jpg"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_bd

    return-void

    .line 381
    :cond_bd
    sput-boolean v1, Lcom/example/vcam/HookMain;->is_someone_playing:Z

    const-string v0, "\u3010VCAM\u3011\u5f00\u59cb\u9884\u89c8"

    .line 382
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 383
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera;

    sput-object p1, Lcom/example/vcam/HookMain;->start_preview_camera:Landroid/hardware/Camera;

    .line 384
    sget-object p1, Lcom/example/vcam/HookMain;->ori_holder:Landroid/view/SurfaceHolder;

    const-string v0, "\u3010VCAM\u3011"

    const-string v3, "/DCIM/Camera1/no-silent.jpg"

    const/4 v5, 0x0

    if-eqz p1, :cond_180

    .line 386
    sget-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    if-nez p1, :cond_df

    .line 387
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    goto :goto_ee

    .line 389
    :cond_df
    sget-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 390
    sput-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    .line 391
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    .line 393
    :goto_ee
    sget-object p1, Lcom/example/vcam/HookMain;->ori_holder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_17f

    sget-object p1, Lcom/example/vcam/HookMain;->ori_holder:Landroid/view/SurfaceHolder;

    if-nez p1, :cond_100

    goto/16 :goto_17f

    .line 396
    :cond_100
    sget-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    sget-object v6, Lcom/example/vcam/HookMain;->ori_holder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 397
    new-instance p1, Ljava/io/File;

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

    invoke-direct {p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_135

    sget-boolean p1, Lcom/example/vcam/HookMain;->is_someone_playing:Z

    if-eqz p1, :cond_132

    goto :goto_135

    .line 402
    :cond_132
    sput-boolean v4, Lcom/example/vcam/HookMain;->is_someone_playing:Z

    goto :goto_13c

    .line 399
    :cond_135
    :goto_135
    sget-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 400
    sput-boolean v1, Lcom/example/vcam/HookMain;->is_someone_playing:Z

    .line 404
    :goto_13c
    sget-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 406
    sget-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/example/vcam/HookMain$11$1;

    invoke-direct {v6, p0}, Lcom/example/vcam/HookMain$11$1;-><init>(Lcom/example/vcam/HookMain$11;)V

    invoke-virtual {p1, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 414
    :try_start_14b
    sget-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 415
    sget-object p1, Lcom/example/vcam/HookMain;->mplayer1:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_166} :catch_167

    goto :goto_180

    :catch_167
    move-exception p1

    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    goto :goto_180

    :cond_17f
    :goto_17f
    return-void

    .line 422
    :cond_180
    :goto_180
    sget-object p1, Lcom/example/vcam/HookMain;->mSurfacetexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_232

    .line 423
    sget-object p1, Lcom/example/vcam/HookMain;->mSurface:Landroid/view/Surface;

    if-nez p1, :cond_192

    .line 424
    new-instance p1, Landroid/view/Surface;

    sget-object v6, Lcom/example/vcam/HookMain;->mSurfacetexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object p1, Lcom/example/vcam/HookMain;->mSurface:Landroid/view/Surface;

    goto :goto_1a0

    .line 426
    :cond_192
    sget-object p1, Lcom/example/vcam/HookMain;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 427
    new-instance p1, Landroid/view/Surface;

    sget-object v6, Lcom/example/vcam/HookMain;->mSurfacetexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object p1, Lcom/example/vcam/HookMain;->mSurface:Landroid/view/Surface;

    .line 430
    :goto_1a0
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_1ac

    .line 431
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_1b8

    .line 433
    :cond_1ac
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 434
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 437
    :goto_1b8
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v6, Lcom/example/vcam/HookMain;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v6}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 439
    new-instance p1, Ljava/io/File;

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

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1e9

    sget-boolean p1, Lcom/example/vcam/HookMain;->is_someone_playing:Z

    if-eqz p1, :cond_1e6

    goto :goto_1e9

    .line 444
    :cond_1e6
    sput-boolean v4, Lcom/example/vcam/HookMain;->is_someone_playing:Z

    goto :goto_1f0

    .line 441
    :cond_1e9
    :goto_1e9
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 442
    sput-boolean v1, Lcom/example/vcam/HookMain;->is_someone_playing:Z

    .line 446
    :goto_1f0
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 448
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/example/vcam/HookMain$11$2;

    invoke-direct {v1, p0}, Lcom/example/vcam/HookMain$11$2;-><init>(Lcom/example/vcam/HookMain$11;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 456
    :try_start_1ff
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 457
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_21a
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_21a} :catch_21b

    goto :goto_232

    :catch_21b
    move-exception p1

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    :cond_232
    :goto_232
    return-void
.end method
