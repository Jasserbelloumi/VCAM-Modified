.class final enum Lcom/example/vcam/OutputImageFormat;
.super Ljava/lang/Enum;
.source "VideoToFrames.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/example/vcam/OutputImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/example/vcam/OutputImageFormat;

.field public static final enum I420:Lcom/example/vcam/OutputImageFormat;

.field public static final enum JPEG:Lcom/example/vcam/OutputImageFormat;

.field public static final enum NV21:Lcom/example/vcam/OutputImageFormat;


# instance fields
.field private final friendlyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 345
    new-instance v0, Lcom/example/vcam/OutputImageFormat;

    const-string v1, "I420"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/example/vcam/OutputImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/example/vcam/OutputImageFormat;->I420:Lcom/example/vcam/OutputImageFormat;

    .line 346
    new-instance v1, Lcom/example/vcam/OutputImageFormat;

    const-string v3, "NV21"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/example/vcam/OutputImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/example/vcam/OutputImageFormat;->NV21:Lcom/example/vcam/OutputImageFormat;

    .line 347
    new-instance v3, Lcom/example/vcam/OutputImageFormat;

    const-string v5, "JPEG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/example/vcam/OutputImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/example/vcam/OutputImageFormat;->JPEG:Lcom/example/vcam/OutputImageFormat;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/example/vcam/OutputImageFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 344
    sput-object v5, Lcom/example/vcam/OutputImageFormat;->$VALUES:[Lcom/example/vcam/OutputImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 351
    iput-object p3, p0, Lcom/example/vcam/OutputImageFormat;->friendlyName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/vcam/OutputImageFormat;
    .registers 2

    .line 344
    const-class v0, Lcom/example/vcam/OutputImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/example/vcam/OutputImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/example/vcam/OutputImageFormat;
    .registers 1

    .line 344
    sget-object v0, Lcom/example/vcam/OutputImageFormat;->$VALUES:[Lcom/example/vcam/OutputImageFormat;

    invoke-virtual {v0}, [Lcom/example/vcam/OutputImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/example/vcam/OutputImageFormat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/example/vcam/OutputImageFormat;->friendlyName:Ljava/lang/String;

    return-object v0
.end method
