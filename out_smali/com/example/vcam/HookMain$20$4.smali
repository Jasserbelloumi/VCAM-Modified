.class Lcom/example/vcam/HookMain$20$4;
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

    .line 939
    iput-object p1, p0, Lcom/example/vcam/HookMain$20$4;->this$1:Lcom/example/vcam/HookMain$20;

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

    .line 942
    invoke-super {p0, p1}, Lde/robv/android/xposed/XC_MethodHook;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 943
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_32

    .line 944
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    new-array v2, v1, [Landroid/view/Surface;

    const/4 v3, 0x0

    sget-object v4, Lcom/example/vcam/HookMain;->c2_virtual_surface:Landroid/view/Surface;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v0, "\u3010VCAM\u3011\u6267\u884c\u4e86 createReprocessableCaptureSession "

    .line 945
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 946
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_32

    .line 947
    iget-object v0, p0, Lcom/example/vcam/HookMain$20$4;->this$1:Lcom/example/vcam/HookMain$20;

    iget-object v0, v0, Lcom/example/vcam/HookMain$20;->this$0:Lcom/example/vcam/HookMain;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v1

    check-cast p1, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    # invokes: Lcom/example/vcam/HookMain;->process_camera2Session_callback(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    invoke-static {v0, p1}, Lcom/example/vcam/HookMain;->access$600(Lcom/example/vcam/HookMain;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    :cond_32
    return-void
.end method
