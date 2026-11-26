.class public final Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
.super Ljava/lang/Object;
.source "ExpectShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/shell/ExpectShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExpectShellBuilder"
.end annotation


# instance fields
.field private detectSettings:Z

.field private encoding:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private input:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private os:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/shell/ExpectShell$OS;",
            ">;"
        }
    .end annotation
.end field

.field private output:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private passwordErrorText:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private passwordPrompt:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remoteIdentification:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private session:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;"
        }
    .end annotation
.end field

.field private startupTimeout:Ljava/time/Duration;

.field private trigger:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/shell/ShellStartupTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdetectSettings(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->detectSettings:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetencoding(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->encoding:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinput(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->input:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetos(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->os:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoutput(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->output:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordErrorText(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->passwordErrorText:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordPrompt(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->passwordPrompt:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremoteIdentification(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->remoteIdentification:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsession(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->session:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartupTimeout(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->startupTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettrigger(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->trigger:Ljava/util/Optional;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->os:Ljava/util/Optional;

    const-wide/16 v0, 0x1e

    .line 238
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->startupTimeout:Ljava/time/Duration;

    .line 239
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->input:Ljava/util/Optional;

    .line 240
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->output:Ljava/util/Optional;

    .line 241
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->session:Ljava/util/Optional;

    .line 242
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->remoteIdentification:Ljava/util/Optional;

    .line 243
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->encoding:Ljava/util/Optional;

    .line 244
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->passwordPrompt:Ljava/util/Optional;

    .line 245
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->passwordErrorText:Ljava/util/Optional;

    .line 246
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->trigger:Ljava/util/Optional;

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->detectSettings:Z

    return-void
.end method

.method public static create()Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 1

    .line 255
    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sshtools/client/shell/ExpectShell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .line 467
    new-instance v0, Lcom/sshtools/client/shell/ExpectShell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;Lcom/sshtools/client/shell/ExpectShell-IA;)V

    return-object v0
.end method

.method public withDetectSettings(Z)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->detectSettings:Z

    return-object p0
.end method

.method public withEncoding(Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    if-nez p1, :cond_0

    .line 326
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->encoding:Ljava/util/Optional;

    return-object p0

    .line 329
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->withEncoding(Ljava/nio/charset/Charset;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withEncoding(Ljava/nio/charset/Charset;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 339
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->encoding:Ljava/util/Optional;

    return-object p0
.end method

.method public withInput(Ljava/io/InputStream;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 349
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->input:Ljava/util/Optional;

    return-object p0
.end method

.method public withOS(I)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation

    .line 434
    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->code(I)Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->withOS(Lcom/sshtools/client/shell/ExpectShell$OS;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withOS(Lcom/sshtools/client/shell/ExpectShell$OS;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 417
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->os:Ljava/util/Optional;

    return-object p0
.end method

.method public withOutput(Ljava/io/OutputStream;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 359
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->output:Ljava/util/Optional;

    return-object p0
.end method

.method public withPasswordErrorText(Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 301
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->passwordErrorText:Ljava/util/Optional;

    return-object p0
.end method

.method public withPasswordPrompt(Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 314
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->passwordPrompt:Ljava/util/Optional;

    return-object p0
.end method

.method public withSession(Lcom/sshtools/client/SessionChannelNG;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 375
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->session:Ljava/util/Optional;

    return-object p0
.end method

.method public withSession(Lcom/sshtools/client/tasks/AbstractSessionTask;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;)",
            "Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;"
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/AbstractSessionTask;->getSession()Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->withSession(Lcom/sshtools/client/SessionChannelNG;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withStartupTimeout(Ljava/time/Duration;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->startupTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method public withStartupTimeoutSec(I)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 2

    int-to-long v0, p1

    .line 455
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->withStartupTimeout(Ljava/time/Duration;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withTask(Lcom/sshtools/client/tasks/AbstractSessionTask;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;)",
            "Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;"
        }
    .end annotation

    .line 389
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/AbstractSessionTask;->getSession()Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->withSession(Lcom/sshtools/client/SessionChannelNG;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withTrigger(Lcom/sshtools/client/shell/ShellStartupTrigger;)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 0

    .line 288
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->trigger:Ljava/util/Optional;

    return-object p0
.end method

.method public withoutDetectSettings()Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->withDetectSettings(Z)Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;

    move-result-object v0

    return-object v0
.end method
