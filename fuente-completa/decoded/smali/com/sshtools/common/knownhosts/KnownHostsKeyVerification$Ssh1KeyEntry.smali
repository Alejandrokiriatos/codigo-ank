.class Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh1KeyEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ssh1KeyEntry"
.end annotation


# instance fields
.field line:Ljava/lang/String;

.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh1KeyEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V

    .line 781
    iput-object p2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh1KeyEntry;->line:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method canValidate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getFormattedLine()Ljava/lang/String;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$Ssh1KeyEntry;->line:Ljava/lang/String;

    return-object v0
.end method

.method varargs validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
