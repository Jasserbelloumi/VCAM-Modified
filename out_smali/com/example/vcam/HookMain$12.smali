.class Lcom/example/vcam/HookMain$12;
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

    .line 465
    iput-object p1, p0, Lcom/example/vcam/HookMain$12;->this$0:Lcom/example/vcam/HookMain;

    iput-object p2, p0, Lcom/example/vcam/HookMain$12;->val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "\u3010VCAM\u3011\u6dfb\u52a0Surfaceview\u9884\u89c8"

    .line 468
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 469
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

    .line 470
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/DCIM/Camera1/no_toast.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/example/vcam/HookMain$12;->this$0:Lcom/example/vcam/HookMain;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    iput-boolean v1, v2, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    .line 472
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9d

    .line 473
    iget-object p1, p0, Lcom/example/vcam/HookMain$12;->this$0:Lcom/example/vcam/HookMain;

    iget-object p1, p1, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    if-eqz p1, :cond_9c

    iget-object p1, p0, Lcom/example/vcam/HookMain$12;->this$0:Lcom/example/vcam/HookMain;

    iget-boolean p1, p1, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    if-eqz p1, :cond_9c

    .line 475
    :try_start_58
    iget-object p1, p0, Lcom/example/vcam/HookMain$12;->this$0:Lcom/example/vcam/HookMain;

    iget-object p1, p1, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0d\u5b58\u5728\u66ff\u6362\u89c6\u9891\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/example/vcam/HookMain$12;->val$lpparam:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

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
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_82} :catch_83

    goto :goto_9c

    :catch_83
    move-exception p1

    .line 477
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

    :cond_9c
    :goto_9c
    return-void

    .line 482
    :cond_9d
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/DCIM/Camera1/disable.jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c2

    return-void

    .line 486
    :cond_c2
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera;

    sput-object v0, Lcom/example/vcam/HookMain;->mcamera1:Landroid/hardware/Camera;

    .line 487
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Landroid/view/SurfaceHolder;

    sput-object v0, Lcom/example/vcam/HookMain;->ori_holder:Landroid/view/SurfaceHolder;

    .line 488
    sget-object v0, Lcom/example/vcam/HookMain;->c1_fake_texture:Landroid/graphics/SurfaceTexture;

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-nez v0, :cond_df

    .line 489
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Lcom/example/vcam/HookMain;->c1_fake_texture:Landroid/graphics/SurfaceTexture;

    goto :goto_ed

    .line 491
    :cond_df
    sget-object v0, Lcom/example/vcam/HookMain;->c1_fake_texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 492
    sput-object v2, Lcom/example/vcam/HookMain;->c1_fake_texture:Landroid/graphics/SurfaceTexture;

    .line 493
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    sput-object v0, Lcom/example/vcam/HookMain;->c1_fake_texture:Landroid/graphics/SurfaceTexture;

    .line 496
    :goto_ed
    sget-object v0, Lcom/example/vcam/HookMain;->c1_fake_surface:Landroid/view/Surface;

    if-nez v0, :cond_fb

    .line 497
    new-instance v0, Landroid/view/Surface;

    sget-object v1, Lcom/example/vcam/HookMain;->c1_fake_texture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object v0, Lcom/example/vcam/HookMain;->c1_fake_surface:Landroid/view/Surface;

    goto :goto_10b

    .line 499
    :cond_fb
    sget-object v0, Lcom/example/vcam/HookMain;->c1_fake_surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 500
    sput-object v2, Lcom/example/vcam/HookMain;->c1_fake_surface:Landroid/view/Surface;

    .line 501
    new-instance v0, Landroid/view/Surface;

    sget-object v1, Lcom/example/vcam/HookMain;->c1_fake_texture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object v0, Lcom/example/vcam/HookMain;->c1_fake_surface:Landroid/view/Surface;

    .line 503
    :goto_10b
    sput-boolean v3, Lcom/example/vcam/HookMain;->is_hooked:Z

    .line 504
    sget-object v0, Lcom/example/vcam/HookMain;->mcamera1:Landroid/hardware/Camera;

    sget-object v1, Lcom/example/vcam/HookMain;->c1_fake_texture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 505
    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void
.end method
