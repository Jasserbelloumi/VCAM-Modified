.class Lcom/example/vcam/HookMain$8;
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


# direct methods
.method constructor <init>(Lcom/example/vcam/HookMain;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/example/vcam/HookMain$8;->this$0:Lcom/example/vcam/HookMain;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    const-string v0, "\u3010VCAM\u30114\u53c2\u6570\u62cd\u7167"

    .line 261
    invoke-static {v0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 262
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_11

    .line 263
    iget-object v0, p0, Lcom/example/vcam/HookMain$8;->this$0:Lcom/example/vcam/HookMain;

    # invokes: Lcom/example/vcam/HookMain;->process_a_shot_YUV(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    invoke-static {v0, p1}, Lcom/example/vcam/HookMain;->access$200(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    .line 266
    :cond_11
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_1d

    .line 267
    iget-object v0, p0, Lcom/example/vcam/HookMain$8;->this$0:Lcom/example/vcam/HookMain;

    # invokes: Lcom/example/vcam/HookMain;->process_a_shot_jpeg(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;I)V
    invoke-static {v0, p1, v1}, Lcom/example/vcam/HookMain;->access$300(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;I)V

    :cond_1d
    return-void
.end method
