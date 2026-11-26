.class public Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ssh2KeyEntry"
.end annotation


# instance fields
.field hashedEntry:Z

.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 804
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    .line 805
    invoke-direct/range {p0 .. p5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V

    move-object p1, p0

    const/4 p3, 0x0

    .line 802
    iput-boolean p3, p1, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;->hashedEntry:Z

    .line 806
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 807
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "|"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 808
    iput-boolean p4, p1, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;->hashedEntry:Z

    :cond_0
    return-void
.end method


# virtual methods
.method getFormattedLine()Ljava/lang/String;
    .locals 4

    .line 820
    :try_start_0
    const-string v0, "%s %s"

    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;->getNames()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;->key:Lcom/sshtools/common/ssh/components/SshPublicKey;

    iget-object v3, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;->comment:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sshtools/common/publickey/SshKeyUtils;->getFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 822
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isHashedEntry()Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh2KeyEntry;->hashedEntry:Z

    return v0
.end method
