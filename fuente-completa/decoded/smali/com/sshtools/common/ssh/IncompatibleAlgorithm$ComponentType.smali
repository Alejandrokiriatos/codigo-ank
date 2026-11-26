.class public final enum Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;
.super Ljava/lang/Enum;
.source "IncompatibleAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/IncompatibleAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComponentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

.field public static final enum CIPHER_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

.field public static final enum CIPHER_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

.field public static final enum COMPRESSION_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

.field public static final enum COMPRESSION_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

.field public static final enum KEYEXCHANGE:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

.field public static final enum MAC_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

.field public static final enum MAC_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

.field public static final enum PUBLICKEY:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;
    .locals 8

    .line 27
    sget-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->CIPHER_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    sget-object v1, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->CIPHER_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    sget-object v2, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->MAC_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    sget-object v3, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->MAC_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    sget-object v4, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->KEYEXCHANGE:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    sget-object v5, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->PUBLICKEY:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    sget-object v6, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->COMPRESSION_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    sget-object v7, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->COMPRESSION_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    filled-new-array/range {v0 .. v7}, [Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    const-string v1, "CIPHER_CS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->CIPHER_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    new-instance v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    const-string v1, "CIPHER_SC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->CIPHER_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    new-instance v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    const-string v1, "MAC_CS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->MAC_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    new-instance v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    const-string v1, "MAC_SC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->MAC_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    new-instance v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    const-string v1, "KEYEXCHANGE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->KEYEXCHANGE:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    new-instance v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    const-string v1, "PUBLICKEY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->PUBLICKEY:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    new-instance v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    const-string v1, "COMPRESSION_CS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->COMPRESSION_CS:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    new-instance v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    const-string v1, "COMPRESSION_SC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->COMPRESSION_SC:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    invoke-static {}, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->$values()[Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->$VALUES:[Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;
    .locals 1

    .line 27
    const-class v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;
    .locals 1

    .line 27
    sget-object v0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->$VALUES:[Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    invoke-virtual {v0}, [Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    return-object v0
.end method
