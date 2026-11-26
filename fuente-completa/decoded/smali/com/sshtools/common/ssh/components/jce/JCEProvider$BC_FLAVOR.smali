.class final enum Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
.super Ljava/lang/Enum;
.source "JCEProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/JCEProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BC_FLAVOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

.field public static final enum BC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

.field public static final enum BCFIPS:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

.field public static final enum SC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
    .locals 3

    .line 58
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->BC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    sget-object v1, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->BCFIPS:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    sget-object v2, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->SC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    filled-new-array {v0, v1, v2}, [Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    const-string v1, "BC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->BC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    .line 60
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    const-string v1, "BCFIPS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->BCFIPS:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    .line 61
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    const-string v1, "SC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->SC:Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    .line 58
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->$values()[Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->$VALUES:[Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
    .locals 1

    .line 58
    const-class v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;
    .locals 1

    .line 58
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->$VALUES:[Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    invoke-virtual {v0}, [Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/common/ssh/components/jce/JCEProvider$BC_FLAVOR;

    return-object v0
.end method
