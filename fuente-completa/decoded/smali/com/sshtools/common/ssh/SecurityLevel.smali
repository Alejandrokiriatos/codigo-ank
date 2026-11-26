.class public final enum Lcom/sshtools/common/ssh/SecurityLevel;
.super Ljava/lang/Enum;
.source "SecurityLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/common/ssh/SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/common/ssh/SecurityLevel;

.field public static final enum PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

.field public static final enum STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

.field public static final enum WEAK:Lcom/sshtools/common/ssh/SecurityLevel;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 3

    .line 25
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    sget-object v1, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    sget-object v2, Lcom/sshtools/common/ssh/SecurityLevel;->PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

    filled-new-array {v0, v1, v2}, [Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/sshtools/common/ssh/SecurityLevel;

    const-string v1, "WEAK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    .line 27
    new-instance v0, Lcom/sshtools/common/ssh/SecurityLevel;

    const-string v1, "STRONG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    .line 28
    new-instance v0, Lcom/sshtools/common/ssh/SecurityLevel;

    const-string v1, "PARANOID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

    .line 25
    invoke-static {}, Lcom/sshtools/common/ssh/SecurityLevel;->$values()[Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->$VALUES:[Lcom/sshtools/common/ssh/SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 25
    const-class v0, Lcom/sshtools/common/ssh/SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/ssh/SecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 25
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->$VALUES:[Lcom/sshtools/common/ssh/SecurityLevel;

    invoke-virtual {v0}, [Lcom/sshtools/common/ssh/SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method
