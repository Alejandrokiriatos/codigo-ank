.class public Lcom/sshtools/common/files/nio/AbstractFileURI;
.super Ljava/lang/Object;
.source "AbstractFileURI.java"


# static fields
.field public static final URI_SCHEME:Ljava/lang/String; = "abfs"


# instance fields
.field connectionUUID:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/net/URI;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileURI;->validate(Ljava/net/URI;)V

    .line 39
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileURI;->connectionUUID:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileURI;->path:Ljava/lang/String;

    return-void
.end method

.method public static varargs create(Lcom/sshtools/common/ssh/SshConnection;[Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    const-string v0, "/"

    .line 45
    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string v2, "abfs"

    invoke-interface {p0}, Lcom/sshtools/common/ssh/SshConnection;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not create URI from given input"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static parse(Ljava/net/URI;)Lcom/sshtools/common/files/nio/AbstractFileURI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileURI;

    invoke-direct {v0, p0}, Lcom/sshtools/common/files/nio/AbstractFileURI;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method private static validate(Ljava/net/URI;)V
    .locals 2

    .line 64
    const-string v0, "abfs"

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI must not have a fragment part"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI must not have a query part"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI must have a path"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI must have an authority"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI must have abfs scheme"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getConnectionId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileURI;->connectionUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileURI;->path:Ljava/lang/String;

    return-object v0
.end method
