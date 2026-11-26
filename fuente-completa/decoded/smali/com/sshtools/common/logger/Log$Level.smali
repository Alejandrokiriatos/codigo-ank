.class public final enum Lcom/sshtools/common/logger/Log$Level;
.super Ljava/lang/Enum;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/logger/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/common/logger/Log$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/common/logger/Log$Level;

.field public static final enum DEBUG:Lcom/sshtools/common/logger/Log$Level;

.field public static final enum ERROR:Lcom/sshtools/common/logger/Log$Level;

.field public static final enum INFO:Lcom/sshtools/common/logger/Log$Level;

.field public static final enum NONE:Lcom/sshtools/common/logger/Log$Level;

.field public static final enum TRACE:Lcom/sshtools/common/logger/Log$Level;

.field public static final enum WARN:Lcom/sshtools/common/logger/Log$Level;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/common/logger/Log$Level;
    .locals 6

    .line 61
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->NONE:Lcom/sshtools/common/logger/Log$Level;

    sget-object v1, Lcom/sshtools/common/logger/Log$Level;->ERROR:Lcom/sshtools/common/logger/Log$Level;

    sget-object v2, Lcom/sshtools/common/logger/Log$Level;->WARN:Lcom/sshtools/common/logger/Log$Level;

    sget-object v3, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    sget-object v4, Lcom/sshtools/common/logger/Log$Level;->DEBUG:Lcom/sshtools/common/logger/Log$Level;

    sget-object v5, Lcom/sshtools/common/logger/Log$Level;->TRACE:Lcom/sshtools/common/logger/Log$Level;

    filled-new-array/range {v0 .. v5}, [Lcom/sshtools/common/logger/Log$Level;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/sshtools/common/logger/Log$Level;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/logger/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/logger/Log$Level;->NONE:Lcom/sshtools/common/logger/Log$Level;

    .line 63
    new-instance v0, Lcom/sshtools/common/logger/Log$Level;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/logger/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/logger/Log$Level;->ERROR:Lcom/sshtools/common/logger/Log$Level;

    .line 64
    new-instance v0, Lcom/sshtools/common/logger/Log$Level;

    const-string v1, "WARN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/logger/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/logger/Log$Level;->WARN:Lcom/sshtools/common/logger/Log$Level;

    .line 65
    new-instance v0, Lcom/sshtools/common/logger/Log$Level;

    const-string v1, "INFO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/logger/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    .line 66
    new-instance v0, Lcom/sshtools/common/logger/Log$Level;

    const-string v1, "DEBUG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/logger/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/logger/Log$Level;->DEBUG:Lcom/sshtools/common/logger/Log$Level;

    .line 67
    new-instance v0, Lcom/sshtools/common/logger/Log$Level;

    const-string v1, "TRACE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/logger/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/logger/Log$Level;->TRACE:Lcom/sshtools/common/logger/Log$Level;

    .line 61
    invoke-static {}, Lcom/sshtools/common/logger/Log$Level;->$values()[Lcom/sshtools/common/logger/Log$Level;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/logger/Log$Level;->$VALUES:[Lcom/sshtools/common/logger/Log$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/common/logger/Log$Level;
    .locals 1

    .line 61
    const-class v0, Lcom/sshtools/common/logger/Log$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/logger/Log$Level;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/common/logger/Log$Level;
    .locals 1

    .line 61
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->$VALUES:[Lcom/sshtools/common/logger/Log$Level;

    invoke-virtual {v0}, [Lcom/sshtools/common/logger/Log$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/common/logger/Log$Level;

    return-object v0
.end method
