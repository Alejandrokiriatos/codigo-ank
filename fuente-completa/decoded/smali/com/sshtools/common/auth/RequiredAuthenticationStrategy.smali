.class public final enum Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;
.super Ljava/lang/Enum;
.source "RequiredAuthenticationStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

.field public static final enum ONCE_PER_AUTHENTICATION_ATTEMPT:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

.field public static final enum ONCE_PER_CONNECTION:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;
    .locals 2

    .line 25
    sget-object v0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->ONCE_PER_CONNECTION:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    sget-object v1, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->ONCE_PER_AUTHENTICATION_ATTEMPT:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    filled-new-array {v0, v1}, [Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    const-string v1, "ONCE_PER_CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->ONCE_PER_CONNECTION:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    .line 28
    new-instance v0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    const-string v1, "ONCE_PER_AUTHENTICATION_ATTEMPT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->ONCE_PER_AUTHENTICATION_ATTEMPT:Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    .line 25
    invoke-static {}, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->$values()[Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->$VALUES:[Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;
    .locals 1

    .line 25
    const-class v0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;
    .locals 1

    .line 25
    sget-object v0, Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->$VALUES:[Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    invoke-virtual {v0}, [Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/common/auth/RequiredAuthenticationStrategy;

    return-object v0
.end method
