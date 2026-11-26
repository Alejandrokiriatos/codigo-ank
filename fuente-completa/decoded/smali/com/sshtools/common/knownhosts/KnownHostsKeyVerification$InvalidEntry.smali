.class public Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;
.super Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;
.source "KnownHostsKeyVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvalidEntry"
.end annotation


# instance fields
.field line:Ljava/lang/String;

.field final synthetic this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;


# direct methods
.method constructor <init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;Ljava/lang/String;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;->this$0:Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;

    invoke-direct {p0, p1}, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$NonValidatingFileEntry;-><init>(Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification;)V

    .line 909
    iput-object p2, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;->line:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getFormattedLine()Ljava/lang/String;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/sshtools/common/knownhosts/KnownHostsKeyVerification$InvalidEntry;->line:Ljava/lang/String;

    return-object v0
.end method
