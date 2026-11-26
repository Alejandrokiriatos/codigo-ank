.class public Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;
.super Ljava/lang/Object;
.source "AuthorizedKeyOptions.java"


# static fields
.field public static final AGENT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final CERT_AUTHORITY:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final NO_AGENT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final NO_PORT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final NO_PTY:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final NO_USER_RC:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final NO_X11_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final PORT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final PTY:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final RESRICT:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final USER_RC:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field

.field public static final X11_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "restrict"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->RESRICT:Lcom/sshtools/common/publickey/authorized/Option;

    .line 29
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "agent-forwarding"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->AGENT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    .line 30
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "port-forwarding"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->PORT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    .line 31
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "pty"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->PTY:Lcom/sshtools/common/publickey/authorized/Option;

    .line 32
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "user-rc"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->USER_RC:Lcom/sshtools/common/publickey/authorized/Option;

    .line 33
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "X11-forwarding"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->X11_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    .line 35
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "no-agent-forwarding"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->NO_AGENT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    .line 36
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "no-port-forwarding"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->NO_PORT_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    .line 37
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "no-pty"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->NO_PTY:Lcom/sshtools/common/publickey/authorized/Option;

    .line 38
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "no-user-rc"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->NO_USER_RC:Lcom/sshtools/common/publickey/authorized/Option;

    .line 39
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "no-X11-forwarding"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->NO_X11_FORWARDING:Lcom/sshtools/common/publickey/authorized/Option;

    .line 41
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    const-string v1, "cert-authority"

    invoke-direct {v0, v1}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/publickey/authorized/AuthorizedKeyOptions;->CERT_AUTHORITY:Lcom/sshtools/common/publickey/authorized/Option;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNoOption(Lcom/sshtools/common/publickey/authorized/Option;)Lcom/sshtools/common/publickey/authorized/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;)",
            "Lcom/sshtools/common/publickey/authorized/Option<",
            "*>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/sshtools/common/publickey/authorized/NoArgOption;

    invoke-virtual {p0}, Lcom/sshtools/common/publickey/authorized/Option;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sshtools/common/publickey/authorized/NoArgOption;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
