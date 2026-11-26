.class abstract Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "NonValidatingFileEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V

    return-void
.end method


# virtual methods
.method canValidate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method varargs validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 935
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
