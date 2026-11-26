.class public Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CommentEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentEntry"
.end annotation


# instance fields
.field comment:Ljava/lang/String;

.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CommentEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V

    .line 895
    iput-object p2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CommentEntry;->comment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getFormattedLine()Ljava/lang/String;
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$CommentEntry;->comment:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "#%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
