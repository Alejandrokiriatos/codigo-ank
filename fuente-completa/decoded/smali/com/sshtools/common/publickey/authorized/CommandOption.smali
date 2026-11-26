.class public Lcom/sshtools/common/publickey/authorized/CommandOption;
.super Lcom/sshtools/common/publickey/authorized/StringOption;
.source "CommandOption.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    const-string v0, "command"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/publickey/authorized/StringOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFormattedOption()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/sshtools/common/publickey/authorized/StringOption;->getFormattedOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
