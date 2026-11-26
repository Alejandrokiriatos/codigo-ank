.class public Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CertAuthorityEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 830
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 831
    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method canValidate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method getFormattedLine()Ljava/lang/String;
    .locals 4

    .line 837
    :try_start_0
    const-string v0, "@cert-authority %s %s"

    invoke-virtual {p0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;->getNames()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;->key:Lcom/sshtools/common/ssh/components/SshPublicKey;

    iget-object v3, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;->comment:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sshtools/common/publickey/SshKeyUtils;->getFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 839
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isCertAuthority()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method varargs validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 850
    invoke-virtual {p0, p2}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;->matchesHost([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 851
    instance-of p2, p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    if-eqz p2, :cond_0

    .line 852
    check-cast p1, Lcom/sshtools/common/publickey/OpenSshCertificate;

    invoke-virtual {p1}, Lcom/sshtools/common/publickey/OpenSshCertificate;->getSignedBy()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    iget-object p2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CertAuthorityEntry;->key:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
