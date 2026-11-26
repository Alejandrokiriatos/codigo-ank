.class public Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$RevokedEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RevokedEntry"
.end annotation


# instance fields
.field revokedEntry:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;",
            ")V"
        }
    .end annotation

    .line 868
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$RevokedEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    .line 869
    invoke-virtual {p3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getComment()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/util/Set;Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Z)V

    .line 870
    iput-object p3, v0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$RevokedEntry;->revokedEntry:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    return-void
.end method


# virtual methods
.method canValidate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method getFormattedLine()Ljava/lang/String;
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$RevokedEntry;->revokedEntry:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;

    invoke-virtual {v0}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$KeyEntry;->getFormattedLine()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "@revoked %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isRevoked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
