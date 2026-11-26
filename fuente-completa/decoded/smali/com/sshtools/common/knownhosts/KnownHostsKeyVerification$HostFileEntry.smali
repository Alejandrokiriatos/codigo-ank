.class public abstract Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;
.super Ljava/lang/Object;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HostFileEntry"
.end annotation


# instance fields
.field temporary:Z

.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$HostFileEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract canValidate()Z
.end method

.method abstract getFormattedLine()Ljava/lang/String;
.end method

.method varargs abstract validate(Lcom/sshtools/common/ssh/components/SshPublicKey;[Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method
