.class public Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$BlankEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlankEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V
    .locals 0

    .line 918
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$BlankEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V

    return-void
.end method


# virtual methods
.method getFormattedLine()Ljava/lang/String;
    .locals 1

    .line 922
    const-string v0, ""

    return-object v0
.end method
