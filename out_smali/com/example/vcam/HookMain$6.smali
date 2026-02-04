.class Lcom/example/vcam/HookMain$6;
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

    .line 240
    iput-object p1, p0, Lcom/example/vcam/HookMain$6;->this$0:Lcom/example/vcam/HookMain;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 243
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    .line 244
    iget-object v0, p0, Lcom/example/vcam/HookMain$6;->this$0:Lcom/example/vcam/HookMain;

    # invokes: Lcom/example/vcam/HookMain;->process_callback(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    invoke-static {v0, p1}, Lcom/example/vcam/HookMain;->access$100(Lcom/example/vcam/HookMain;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    :cond_c
    return-void
.end method
