.class Lcom/example/vcam/HookMain$20;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/vcam/HookMain;->process_camera2_init(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/vcam/HookMain;


# direct methods
.method constructor <init>(Lcom/example/vcam/HookMain;)V
    .registers 2

    .line 817
    iput-object p1, p0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/example/vcam/HookMain;->need_recreate:Z

    .line 821
    iget-object v0, p0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    # invokes: Lcom/example/vcam/HookMain;->create_virtual_surface()Landroid/view/Surface;
    invoke-static {v0}, Lcom/example/vcam/HookMain;->access$500(Lcom/example/vcam/HookMain;)Landroid/view/Surface;

    .line 822
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 823
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 824
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 825
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 826
    sput-object v2, Lcom/example/vcam/HookMain;->c2_player:Landroid/media/MediaPlayer;

    .line 828
    :cond_20
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames;

    if-eqz v0, :cond_2b

    .line 829
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames;

    invoke-virtual {v0}, Lcom/example/vcam/VideoToFrames;->stopDecode()V

    .line 830
    sput-object v2, Lcom/example/vcam/HookMain;->c2_hw_decode_obj_1:Lcom/example/vcam/VideoToFrames;

    .line 832
    :cond_2b
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    if-eqz v0, :cond_36

    .line 833
    sget-object v0, Lcom/example/vcam/HookMain;->c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    invoke-virtual {v0}, Lcom/example/vcam/VideoToFrames;->stopDecode()V

    .line 834
    sput-object v2, Lcom/example/vcam/HookMain;->c2_hw_decode_obj:Lcom/example/vcam/VideoToFrames;

    .line 836
    :cond_36
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4b

    .line 837
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 838
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 839
    sget-object v0, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 840
    sput-object v2, Lcom/example/vcam/HookMain;->c2_player_1:Landroid/media/MediaPlayer;

    .line 842
    :cond_4b
    sput-object v2, Lcom/example/vcam/HookMain;->c2_preview_Surfcae_1:Landroid/view/Surface;

    .line 843
    sput-object v2, Lcom/example/vcam/HookMain;->c2_reader_Surfcae_1:Landroid/view/Surface;

    .line 844
    sput-object v2, Lcom/example/vcam/HookMain;->c2_reader_Surfcae:Landroid/view/Surface;

    .line 845
    sput-object v2, Lcom/example/vcam/HookMain;->c2_preview_Surfcae:Landroid/view/Surface;

    .line 846
    sput-boolean v1, Lcom/example/vcam/HookMain;->is_first_hook_build:Z

    const-string v0, "\u3010VCAM\u3011\u6253\u5f00\u76f8\u673aC2"

    .line 847
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 849
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "virtual.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    new-instance v2, Ljava/io/File;

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

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 851
    iget-object v3, p0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, v3, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    .line 852
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_f5

    .line 853
    iget-object p1, p0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    iget-object p1, p1, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    if-eqz p1, :cond_f4

    iget-object p1, p0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    iget-boolean p1, p1, Lcom/example/vcam/HookMain;->need_to_show_toast:Z

    if-eqz p1, :cond_f4

    .line 855
    :try_start_ac
    iget-object p1, p0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    iget-object p1, p1, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0d\u5b58\u5728\u66ff\u6362\u89c6\u9891\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    iget-object v1, v1, Lcom/example/vcam/HookMain;->toast_content:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u8def\u5f84\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/example/vcam/HookMain;->video_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_da} :catch_db

    goto :goto_f4

    :catch_db
    move-exception p1

    .line 857
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

    :cond_f4
    :goto_f4
    return-void

    .line 862
    :cond_f5
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const-class v5, Ljava/util/List;

    aput-object v5, v4, v2

    const-class v5, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    aput-object v5, v4, v1

    const-class v5, Landroid/os/Handler;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    new-instance v5, Lcom/example/vcam/HookMain$20$1;

    invoke-direct {v5, p0}, Lcom/example/vcam/HookMain$20$1;-><init>(Lcom/example/vcam/HookMain$20;)V

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-string v5, "createCaptureSession"

    invoke-static {v0, v5, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 904
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_142

    .line 905
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/Object;

    const-class v9, Ljava/util/List;

    aput-object v9, v8, v2

    const-class v9, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    aput-object v9, v8, v1

    const-class v9, Landroid/os/Handler;

    aput-object v9, v8, v6

    new-instance v9, Lcom/example/vcam/HookMain$20$2;

    invoke-direct {v9, p0}, Lcom/example/vcam/HookMain$20$2;-><init>(Lcom/example/vcam/HookMain$20;)V

    aput-object v9, v8, v7

    const-string v9, "createCaptureSessionByOutputConfigurations"

    invoke-static {v0, v9, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 923
    :cond_142
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/Object;

    const-class v9, Ljava/util/List;

    aput-object v9, v8, v2

    const-class v9, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    aput-object v9, v8, v1

    const-class v9, Landroid/os/Handler;

    aput-object v9, v8, v6

    new-instance v9, Lcom/example/vcam/HookMain$20$3;

    invoke-direct {v9, p0}, Lcom/example/vcam/HookMain$20$3;-><init>(Lcom/example/vcam/HookMain$20;)V

    aput-object v9, v8, v7

    const-string v9, "createConstrainedHighSpeedCaptureSession"

    invoke-static {v0, v9, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 938
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    const/4 v9, 0x5

    if-lt v0, v8, :cond_191

    .line 939
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v8, v9, [Ljava/lang/Object;

    const-class v10, Landroid/hardware/camera2/params/InputConfiguration;

    aput-object v10, v8, v2

    const-class v10, Ljava/util/List;

    aput-object v10, v8, v1

    const-class v10, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    aput-object v10, v8, v6

    const-class v10, Landroid/os/Handler;

    aput-object v10, v8, v7

    new-instance v10, Lcom/example/vcam/HookMain$20$4;

    invoke-direct {v10, p0}, Lcom/example/vcam/HookMain$20$4;-><init>(Lcom/example/vcam/HookMain$20;)V

    aput-object v10, v8, v3

    const-string v10, "createReprocessableCaptureSession"

    invoke-static {v0, v10, v8}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 955
    :cond_191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1bb

    .line 956
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    const-class v8, Landroid/hardware/camera2/params/InputConfiguration;

    aput-object v8, v4, v2

    const-class v8, Ljava/util/List;

    aput-object v8, v4, v1

    const-class v8, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    aput-object v8, v4, v6

    const-class v8, Landroid/os/Handler;

    aput-object v8, v4, v7

    new-instance v7, Lcom/example/vcam/HookMain$20$5;

    invoke-direct {v7, p0}, Lcom/example/vcam/HookMain$20$5;-><init>(Lcom/example/vcam/HookMain$20;)V

    aput-object v7, v4, v3

    const-string v3, "createReprocessableCaptureSessionByConfigurations"

    invoke-static {v0, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 972
    :cond_1bb
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1d9

    .line 973
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    const-class v3, Landroid/hardware/camera2/params/SessionConfiguration;

    aput-object v3, v0, v2

    new-instance v2, Lcom/example/vcam/HookMain$20$6;

    invoke-direct {v2, p0}, Lcom/example/vcam/HookMain$20$6;-><init>(Lcom/example/vcam/HookMain$20;)V

    aput-object v2, v0, v1

    invoke-static {p1, v5, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_1d9
    return-void
.end method
