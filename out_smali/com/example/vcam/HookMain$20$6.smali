.class Lcom/example/vcam/HookMain$20$6;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/vcam/HookMain$20;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/vcam/HookMain$20;


# direct methods
.method constructor <init>(Lcom/example/vcam/HookMain$20;)V
    .registers 2

    .line 973
    iput-object p1, p0, Lcom/example/vcam/HookMain$20$6;->this$1:Lcom/example/vcam/HookMain$20;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 976
    invoke-super {p0, p1}, Lde/robv/android/xposed/XC_MethodHook;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 977
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_57

    const-string v0, "\u3010VCAM\u3011\u6267\u884c\u4e86 createCaptureSession -5484987"

    .line 978
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 979
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Landroid/hardware/camera2/params/SessionConfiguration;

    sput-object v0, Lcom/example/vcam/HookMain;->sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    .line 980
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    sget-object v2, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    invoke-direct {v0, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    sput-object v0, Lcom/example/vcam/HookMain;->outputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 981
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    sget-object v2, Lcom/example/vcam/HookMain;->sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/SessionConfiguration;->getSessionType()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/hardware/camera2/params/OutputConfiguration;

    sget-object v4, Lcom/example/vcam/HookMain;->outputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    aput-object v4, v3, v1

    .line 982
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/example/vcam/HookMain;->sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    .line 983
    invoke-virtual {v4}, Landroid/hardware/camera2/params/SessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    sget-object v5, Lcom/example/vcam/HookMain;->sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    .line 984
    invoke-virtual {v5}, Landroid/hardware/camera2/params/SessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    sput-object v0, Lcom/example/vcam/HookMain;->fake_sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    .line 985
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    sget-object v0, Lcom/example/vcam/HookMain;->fake_sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    aput-object v0, p1, v1

    .line 986
    iget-object p1, p0, Lcom/example/vcam/HookMain$20$6;->this$1:Lcom/example/vcam/HookMain$20;

    iget-object p1, p1, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    sget-object v0, Lcom/example/vcam/HookMain;->sessionConfiguration:Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/SessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    # invokes: Lcom/example/vcam/HookMain;->process_camera2Session_callback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    invoke-static {p1, v0}, Lcom/example/vcam/HookMain;->access$600(Lcom/example/vcam/HookMain;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    :cond_57
    return-void
.end method
