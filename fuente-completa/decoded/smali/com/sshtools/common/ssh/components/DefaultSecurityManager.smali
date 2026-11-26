.class public Lcom/sshtools/common/ssh/components/DefaultSecurityManager;
.super Ljava/lang/Object;
.source "DefaultSecurityManager.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SecurityManager;


# static fields
.field static DEFAULTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/SecurityLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field config:Lcom/sshtools/common/config/AdaptiveConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sshtools/common/ssh/components/DefaultSecurityManager;->DEFAULTS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "security.cfg"

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/components/DefaultSecurityManager;-><init>(Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/sshtools/common/config/AdaptiveConfiguration;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sshtools/common/config/AdaptiveConfiguration;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/DefaultSecurityManager;->config:Lcom/sshtools/common/config/AdaptiveConfiguration;

    return-void
.end method

.method private toSecurityLevel(Ljava/lang/String;)Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 0

    .line 52
    invoke-static {p1}, Lcom/sshtools/common/ssh/SecurityLevel;->valueOf(Ljava/lang/String;)Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getSecurityLevel(Ljava/lang/String;)Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/DefaultSecurityManager;->config:Lcom/sshtools/common/config/AdaptiveConfiguration;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "WEAK"

    invoke-virtual {v0, p1, v2, v1}, Lcom/sshtools/common/config/AdaptiveConfiguration;->getProperty(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/DefaultSecurityManager;->toSecurityLevel(Ljava/lang/String;)Lcom/sshtools/common/ssh/SecurityLevel;

    move-result-object p1

    return-object p1
.end method
