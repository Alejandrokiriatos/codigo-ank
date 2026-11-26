.class public Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory;
.super Ljava/lang/Object;
.source "BasicSftpExtensionFactory.java"

# interfaces
.implements Lcom/sshtools/common/sftp/SftpExtensionFactory;


# instance fields
.field private final extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/sftp/SftpExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/sftp/SftpExtension;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    new-instance v1, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory;->extensions:Ljava/util/Map;

    return-void
.end method

.method public varargs constructor <init>([Lcom/sshtools/common/sftp/SftpExtension;)V
    .locals 0

    .line 39
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/util/HashMap;Lcom/sshtools/common/sftp/SftpExtension;)V
    .locals 1

    .line 44
    invoke-interface {p1}, Lcom/sshtools/common/sftp/SftpExtension;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getExtension(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpExtension;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory;->extensions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/sftp/SftpExtension;

    return-object p1
.end method

.method public getExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/sftp/SftpExtension;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/sshtools/common/sftp/extensions/BasicSftpExtensionFactory;->extensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
