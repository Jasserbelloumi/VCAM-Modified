.class Lcom/example/vcam/HookMain$11$2;
.super Ljava/lang/Object;
.source "HookMain.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/vcam/HookMain$11;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/example/vcam/HookMain$11;


# direct methods
.method constructor <init>(Lcom/example/vcam/HookMain$11;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/example/vcam/HookMain$11$2;->this$1:Lcom/example/vcam/HookMain$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 451
    sget-object p1, Lcom/example/vcam/HookMain;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
