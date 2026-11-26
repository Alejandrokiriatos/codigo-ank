.class synthetic Lcom/sshtools/client/shell/ShellController$1;
.super Ljava/lang/Object;
.source "ShellController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/shell/ShellController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sshtools$client$shell$ShellMatcher$Continue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 208
    invoke-static {}, Lcom/sshtools/client/shell/ShellMatcher$Continue;->values()[Lcom/sshtools/client/shell/ShellMatcher$Continue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sshtools/client/shell/ShellController$1;->$SwitchMap$com$sshtools$client$shell$ShellMatcher$Continue:[I

    :try_start_0
    sget-object v1, Lcom/sshtools/client/shell/ShellMatcher$Continue;->CONTENT_DOES_NOT_MATCH:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellMatcher$Continue;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sshtools/client/shell/ShellController$1;->$SwitchMap$com$sshtools$client$shell$ShellMatcher$Continue:[I

    sget-object v1, Lcom/sshtools/client/shell/ShellMatcher$Continue;->CONTENT_MATCHES:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellMatcher$Continue;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
