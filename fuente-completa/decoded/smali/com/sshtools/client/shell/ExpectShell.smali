.class public Lcom/sshtools/client/shell/ExpectShell;
.super Ljava/lang/Object;
.source "ExpectShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/shell/ExpectShell$OS;,
        Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;,
        Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;
    }
.end annotation


# static fields
.field static final BEGIN_COMMAND_MARKER:Ljava/lang/String; = "---BEGIN---"

.field static final CLOSED:I = 0x3

.field private static final DEFAULT_PASSWORD_PROMPT:Ljava/lang/String; = "Password:"

.field static final END_COMMAND_MARKER:Ljava/lang/String; = "---END---"

.field static final EXIT_CODE_MARKER:Ljava/lang/String; = "EXITCODE="

.field public static final EXIT_CODE_PROCESS_ACTIVE:I = -0x80000000

.field public static final EXIT_CODE_UNKNOWN:I = -0x7fffffff

.field public static final OS_AIX:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_DARWIN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_FREEBSD:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_HPUX:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_LINUX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_NETBSD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_OPENBSD:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_OPENVMS:I = 0x15
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_POWERSHELL:I = 0x16
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_SOLARIS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_UNIX:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_UNKNOWN:I = 0x63
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field public static final OS_WINDOWS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation
.end field

.field private static final PASSWORD_ERROR_TEXT:Ljava/lang/String; = "Sorry, try again."

.field static final PROCESSING_COMMAND:I = 0x2

.field static final PROCESS_MARKER:Ljava/lang/String; = "PROCESS="

.field private static SHELL_INIT_PERIOD:I = 0x7d0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final WAITING_FOR_COMMAND:I = 0x1

.field private static final verboseDebug:Z


# instance fields
.field private characterEncoding:Ljava/nio/charset/Charset;

.field private final childShell:Z

.field closeHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field numCommandsExecuted:I

.field private final osType:Lcom/sshtools/client/shell/ExpectShell$OS;

.field private passwordErrorText:Ljava/lang/String;

.field private passwordPrompt:Ljava/lang/String;

.field private final startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

.field private final startupTimeout:Ljava/time/Duration;

.field state:I

.field sudoPassword:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetstartupTimeout(Lcom/sshtools/client/shell/ExpectShell;)Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupTimeout:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetverboseDebug()Z
    .locals 1

    sget-boolean v0, Lcom/sshtools/client/shell/ExpectShell;->verboseDebug:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 538
    const-string v0, "maverick.shell.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sshtools/client/shell/ExpectShell;->verboseDebug:Z

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/client/SessionChannelNG;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 600
    invoke-static {p2}, Lcom/sshtools/client/shell/ExpectShell$OS;->code(I)Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/shell/ExpectShell$OS;)V

    return-void
.end method

.method private constructor <init>(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/shell/ExpectShell$OS;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v3, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 605
    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/shell/ShellStartupTrigger;JLcom/sshtools/client/shell/ExpectShell$OS;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/shell/ShellStartupTrigger;JLcom/sshtools/client/shell/ExpectShell$OS;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 528
    iput v0, p0, Lcom/sshtools/client/shell/ExpectShell;->state:I

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->closeHooks:Ljava/util/List;

    .line 534
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->sudoPassword:Ljava/util/Optional;

    const/4 v1, 0x0

    .line 536
    iput v1, p0, Lcom/sshtools/client/shell/ExpectShell;->numCommandsExecuted:I

    .line 614
    invoke-static {p3, p4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p3

    iput-object p3, p0, Lcom/sshtools/client/shell/ExpectShell;->startupTimeout:Ljava/time/Duration;

    .line 615
    iput-boolean v1, p0, Lcom/sshtools/client/shell/ExpectShell;->childShell:Z

    .line 616
    invoke-static {}, Lcom/sshtools/client/shell/ExpectShell;->defaultEncoding()Ljava/nio/charset/Charset;

    move-result-object p3

    iput-object p3, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    .line 617
    const-string p3, "Password:"

    iput-object p3, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    .line 618
    const-string p3, "Sorry, try again."

    iput-object p3, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    .line 620
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 621
    const-string p3, "Creating session for interactive shell"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    :cond_0
    iget-object p3, p0, Lcom/sshtools/client/shell/ExpectShell;->closeHooks:Ljava/util/List;

    new-instance p4, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda4;

    invoke-direct {p4, p1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda4;-><init>(Lcom/sshtools/client/SessionChannelNG;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    sget p3, Lcom/sshtools/client/shell/ExpectShell;->SHELL_INIT_PERIOD:I

    if-lez p3, :cond_1

    int-to-long p3, p3

    .line 628
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :catch_0
    :cond_1
    sget-object p3, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne p5, p3, :cond_2

    .line 634
    invoke-virtual {p1}, Lcom/sshtools/client/SessionChannelNG;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIdentification()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sshtools/client/shell/ExpectShell;->determineServerType(Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object p5

    :cond_2
    move-object v3, p5

    .line 637
    new-instance v2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    sget-object p3, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENVMS:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-eq v3, p3, :cond_3

    move v5, v0

    goto :goto_0

    :cond_3
    move v5, v1

    .line 638
    :goto_0
    invoke-virtual {p1}, Lcom/sshtools/client/SessionChannelNG;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sshtools/client/SessionChannelNG;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    const-string v4, "---BEGIN---"

    move-object v7, p0

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;-><init>(Lcom/sshtools/client/shell/ExpectShell$OS;Ljava/lang/String;ZLcom/sshtools/client/shell/ShellStartupTrigger;Lcom/sshtools/client/shell/ExpectShell;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v2, v7, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    .line 639
    iget-object p1, v2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object p1, v7, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-void
.end method

.method private constructor <init>(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 528
    iput v0, p0, Lcom/sshtools/client/shell/ExpectShell;->state:I

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->closeHooks:Ljava/util/List;

    .line 534
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->sudoPassword:Ljava/util/Optional;

    const/4 v0, 0x0

    .line 536
    iput v0, p0, Lcom/sshtools/client/shell/ExpectShell;->numCommandsExecuted:I

    .line 693
    iput-boolean v0, p0, Lcom/sshtools/client/shell/ExpectShell;->childShell:Z

    .line 694
    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetstartupTimeout(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupTimeout:Ljava/time/Duration;

    .line 695
    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetencoding(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    .line 696
    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetpasswordPrompt(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "Password:"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    .line 697
    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetpasswordErrorText(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "Sorry, try again."

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    .line 699
    new-instance v1, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetos(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda11;-><init>(Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)V

    .line 700
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetdetectSettings(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Z

    move-result v4

    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgettrigger(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    const/4 v3, 0x0

    .line 706
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/sshtools/client/shell/ShellStartupTrigger;

    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetinput(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda12;

    invoke-direct {v3, p1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda12;-><init>(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)V

    .line 708
    invoke-static {v0, v3}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/io/InputStream;

    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetoutput(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda2;-><init>(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)V

    .line 709
    invoke-static {v0, v3}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/io/OutputStream;

    const-string v3, "---BEGIN---"

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;-><init>(Lcom/sshtools/client/shell/ExpectShell$OS;Ljava/lang/String;ZLcom/sshtools/client/shell/ShellStartupTrigger;Lcom/sshtools/client/shell/ExpectShell;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, v6, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    .line 710
    iget-object p1, v1, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object p1, v6, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;Lcom/sshtools/client/shell/ExpectShell-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x7530

    .line 555
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;J)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 560
    invoke-static {p2}, Lcom/sshtools/client/shell/ExpectShell$OS;->code(I)Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ExpectShell$OS;)V

    return-void
.end method

.method private constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ExpectShell$OS;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;",
            "Lcom/sshtools/client/shell/ExpectShell$OS;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v3, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 565
    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;JLcom/sshtools/client/shell/ExpectShell$OS;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;",
            "Lcom/sshtools/client/shell/ShellStartupTrigger;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    const-wide/16 v0, 0x7530

    .line 572
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;J)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;",
            "Lcom/sshtools/client/shell/ShellStartupTrigger;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 579
    sget-object v5, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;JLcom/sshtools/client/shell/ExpectShell$OS;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;JI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;",
            "Lcom/sshtools/client/shell/ShellStartupTrigger;",
            "JI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation

    .line 587
    invoke-static {p5}, Lcom/sshtools/client/shell/ExpectShell$OS;->code(I)Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;JLcom/sshtools/client/shell/ExpectShell$OS;)V

    return-void
.end method

.method private constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask;Lcom/sshtools/client/shell/ShellStartupTrigger;JLcom/sshtools/client/shell/ExpectShell$OS;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask<",
            "Lcom/sshtools/client/SessionChannelNG;",
            ">;",
            "Lcom/sshtools/client/shell/ShellStartupTrigger;",
            "J",
            "Lcom/sshtools/client/shell/ExpectShell$OS;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation

    .line 595
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/AbstractSessionTask;->getSession()Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/sshtools/client/SessionChannelNG;

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/shell/ShellStartupTrigger;JLcom/sshtools/client/shell/ExpectShell$OS;)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sshtools/client/shell/ExpectShell$OS;Lcom/sshtools/client/shell/ExpectShell;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshIOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 528
    iput v0, p0, Lcom/sshtools/client/shell/ExpectShell;->state:I

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->closeHooks:Ljava/util/List;

    .line 534
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->sudoPassword:Ljava/util/Optional;

    const/4 v1, 0x0

    .line 536
    iput v1, p0, Lcom/sshtools/client/shell/ExpectShell;->numCommandsExecuted:I

    .line 647
    iget-object v1, p4, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    .line 648
    iput-boolean v0, p0, Lcom/sshtools/client/shell/ExpectShell;->childShell:Z

    .line 649
    iget-object v0, p4, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    .line 650
    iget-object v0, p4, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    .line 651
    iget-object p4, p4, Lcom/sshtools/client/shell/ExpectShell;->startupTimeout:Ljava/time/Duration;

    iput-object p4, p0, Lcom/sshtools/client/shell/ExpectShell;->startupTimeout:Ljava/time/Duration;

    .line 653
    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "---BEGIN---"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;-><init>(Lcom/sshtools/client/shell/ExpectShell$OS;Ljava/lang/String;ZLcom/sshtools/client/shell/ShellStartupTrigger;Lcom/sshtools/client/shell/ExpectShell;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, v5, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    .line 655
    iget-object p1, v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object p1, v5, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sshtools/client/shell/ExpectShell;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshIOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 662
    iget-object v0, p3, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ExpectShell$OS;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ExpectShell$OS;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshIOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "3.2.0"
    .end annotation

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 528
    iput v0, p0, Lcom/sshtools/client/shell/ExpectShell;->state:I

    .line 533
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->closeHooks:Ljava/util/List;

    .line 534
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->sudoPassword:Ljava/util/Optional;

    const/4 v1, 0x0

    .line 536
    iput v1, p0, Lcom/sshtools/client/shell/ExpectShell;->numCommandsExecuted:I

    .line 681
    iput-boolean v0, p0, Lcom/sshtools/client/shell/ExpectShell;->childShell:Z

    .line 682
    iget-object v0, p3, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    .line 683
    iget-object v0, p3, Lcom/sshtools/client/shell/ExpectShell;->startupTimeout:Ljava/time/Duration;

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupTimeout:Ljava/time/Duration;

    .line 684
    iget-object v0, p3, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    .line 685
    iget-object p3, p3, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    .line 687
    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, "---BEGIN---"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v1, p4

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;-><init>(Lcom/sshtools/client/shell/ExpectShell$OS;Ljava/lang/String;ZLcom/sshtools/client/shell/ShellStartupTrigger;Lcom/sshtools/client/shell/ExpectShell;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, v5, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    .line 689
    iget-object p1, v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object p1, v5, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-void
.end method

.method private checkStartupFinished()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1057
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1058
    const-string v0, "Checking state of startup controller"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1061
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    const-string v0, "Shell still in startup mode, draining startup output"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 1067
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    const-string v0, "Shell is ready for command"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static defaultEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 1459
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0

    .line 623
    invoke-virtual {p0}, Lcom/sshtools/client/SessionChannelNG;->close()V

    return-void
.end method

.method static synthetic lambda$new$1()Ljava/nio/charset/Charset;
    .locals 1

    .line 695
    invoke-static {}, Lcom/sshtools/client/shell/ExpectShell;->defaultEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$10()Ljava/lang/IllegalStateException;
    .locals 2

    .line 709
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OutputStream could not be determined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$2(Lcom/sshtools/client/SessionChannelNG;)Ljava/lang/String;
    .locals 0

    .line 702
    invoke-virtual {p0}, Lcom/sshtools/client/SessionChannelNG;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/Connection;->getRemoteIdentification()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$3(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 1

    .line 702
    invoke-static {p0}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetsession(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$5(Lcom/sshtools/client/SessionChannelNG;)Ljava/io/InputStream;
    .locals 0

    .line 708
    invoke-virtual {p0}, Lcom/sshtools/client/SessionChannelNG;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$6(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 1

    .line 708
    invoke-static {p0}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetsession(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$7()Ljava/lang/IllegalStateException;
    .locals 2

    .line 708
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InputStream could not be determined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$8(Lcom/sshtools/client/SessionChannelNG;)Ljava/io/OutputStream;
    .locals 0

    .line 709
    invoke-virtual {p0}, Lcom/sshtools/client/SessionChannelNG;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$9(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;
    .locals 1

    .line 709
    invoke-static {p0}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetsession(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized nextEndMarker()Ljava/lang/String;
    .locals 4

    const-string v0, "---END---;PROCESS="

    monitor-enter p0

    .line 1073
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";EXITCODE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setShellInitTimeout(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation

    .line 733
    sput p0, Lcom/sshtools/client/shell/ExpectShell;->SHELL_INIT_PERIOD:I

    return-void
.end method


# virtual methods
.method carriageReturn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/shell/ExpectShell;->write([B)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 898
    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell;->internalClose()V

    return-void
.end method

.method determineServerType(Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell$OS;
    .locals 1

    .line 742
    const-string v0, "OpenVMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 744
    sget-object p1, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENVMS:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p1

    .line 747
    :cond_0
    const-string v0, "Windows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 748
    sget-object p1, Lcom/sshtools/client/shell/ExpectShell$OS;->WINDOWS:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p1

    .line 751
    :cond_1
    sget-object p1, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p1
.end method

.method public declared-synchronized execute(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 914
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;Z)Lcom/sshtools/client/shell/ShellProcess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized executeCommand(Ljava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 919
    :try_start_0
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;ZZLjava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized executeCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 929
    :try_start_0
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;ZZLjava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized executeCommand(Ljava/lang/String;Z)Lcom/sshtools/client/shell/ShellProcess;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 924
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;ZZLjava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized executeCommand(Ljava/lang/String;ZLjava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 934
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;ZZLjava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized executeCommand(Ljava/lang/String;ZZ)Lcom/sshtools/client/shell/ShellProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 939
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;ZZLjava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized executeCommand(Ljava/lang/String;ZZLjava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    if-nez p4, :cond_0

    .line 947
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_0
    invoke-static/range {p4 .. p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 950
    :goto_0
    iget v1, p0, Lcom/sshtools/client/shell/ExpectShell;->state:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_d

    const/4 v4, 0x3

    if-eq v1, v4, :cond_c

    .line 957
    invoke-direct {p0}, Lcom/sshtools/client/shell/ExpectShell;->checkStartupFinished()V

    .line 959
    iput v3, p0, Lcom/sshtools/client/shell/ExpectShell;->state:I

    .line 961
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 964
    const-string v2, "."

    .line 965
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-string v2, "source"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v5, Lcom/sshtools/client/shell/ExpectShell$OS;->HPUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne v2, v5, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    or-int v11, p2, v2

    if-eqz v11, :cond_5

    .line 970
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object p2, p2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v2}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 971
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object p2, p2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v2}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 974
    :goto_2
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object p2, p2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->read()I

    move-result p2

    const/16 v2, 0xa

    const/4 v5, -0x1

    if-le p2, v5, :cond_3

    if-eq p2, v2, :cond_3

    goto :goto_2

    .line 977
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object p2, p2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/io/BufferedInputStream;->read()I

    move-result p2

    if-le p2, v5, :cond_4

    if-eq p2, v2, :cond_4

    int-to-char p2, p2

    .line 978
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 980
    :cond_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 981
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prompt is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    :cond_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 986
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing command: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1002
    :cond_6
    invoke-direct {p0}, Lcom/sshtools/client/shell/ExpectShell;->nextEndMarker()Ljava/lang/String;

    move-result-object v9

    .line 1004
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v2, Lcom/sshtools/client/shell/ExpectShell$OS;->WINDOWS:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne p2, v2, :cond_7

    .line 1007
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {p2}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 1008
    invoke-virtual {v2}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 1009
    invoke-virtual {v4}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v5}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, " ---BEGIN--- && "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, " && "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "0 || "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_4

    .line 1010
    :cond_7
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v2, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENVMS:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne p2, v2, :cond_8

    .line 1012
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {p2}, Lcom/sshtools/client/shell/ExpectShell$OS;->pipeCommand()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v2}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 1013
    invoke-virtual {v4}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 1014
    invoke-virtual {v5}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v6}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " \"---BEGIN---\" && "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " && "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " \""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "0\" || "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "\""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "1\""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 1015
    :cond_8
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v2, Lcom/sshtools/client/shell/ExpectShell$OS;->POWERSHELL:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne p2, v2, :cond_9

    .line 1017
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 1018
    invoke-virtual {p2}, Lcom/sshtools/client/shell/ExpectShell$OS;->exitCodeVariable()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v2}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo \"---BEGIN---\"; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; echo \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, "\""

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 1021
    :cond_9
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 1022
    invoke-virtual {p2}, Lcom/sshtools/client/shell/ExpectShell$OS;->exitCodeVariable()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v2}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo \"---BEGIN---\"; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; echo \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, "\""

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1025
    :goto_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1026
    const-string v2, "Executing raw command: {}"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    :cond_a
    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object v2, v2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    .line 1031
    iget p2, p0, Lcom/sshtools/client/shell/ExpectShell;->numCommandsExecuted:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/sshtools/client/shell/ExpectShell;->numCommandsExecuted:I

    .line 1033
    new-instance v5, Lcom/sshtools/client/shell/ShellInputStream;

    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object v6, p2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    const-string v8, "---BEGIN---"

    .line 1036
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object v7, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v12}, Lcom/sshtools/client/shell/ShellInputStream;-><init>(Ljava/io/BufferedInputStream;Lcom/sshtools/client/shell/ExpectShell;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1037
    new-instance p1, Lcom/sshtools/client/shell/ShellProcess;

    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object p2, p2, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    invoke-direct {p1, p0, v5, p2}, Lcom/sshtools/client/shell/ShellProcess;-><init>(Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ShellInputStream;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_b

    .line 1040
    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->waitFor()Lcom/sshtools/client/shell/ShellProcess;
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    :cond_b
    monitor-exit p0

    return-object p1

    .line 954
    :cond_c
    :try_start_1
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Shell is closed!"

    invoke-direct {p1, p2, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 951
    :cond_d
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Command still active"

    invoke-direct {p1, p2, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1046
    :try_start_2
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    .line 1047
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to execute command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-direct {p2, p1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 1044
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized executeWithExitCode(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 910
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;Z)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->getExitCode()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized executeWithOutput(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 906
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;Z)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->getCommandOutput()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public exit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 889
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object v0, v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v1}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exit"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 890
    iget-boolean v0, p0, Lcom/sshtools/client/shell/ExpectShell;->childShell:Z

    if-eqz v0, :cond_0

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object v0, v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell;->close()V

    return-void
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumCommandsExecuted()I
    .locals 1

    .line 1052
    iget v0, p0, Lcom/sshtools/client/shell/ExpectShell;->numCommandsExecuted:I

    return v0
.end method

.method public getOsDescription()Ljava/lang/String;
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell$OS;->description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsType()I
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell$OS;->code()I

    move-result v0

    return v0
.end method

.method public getStartupInputStream()Ljava/io/InputStream;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    return-object v0
.end method

.method public getStartupReader()Lcom/sshtools/client/shell/ShellReader;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object v0, v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->startupController:Lcom/sshtools/client/shell/ShellController;

    return-object v0
.end method

.method public inStartup()Z
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-boolean v0, v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->inStartup:Z

    return v0
.end method

.method internalClose()V
    .locals 2

    const/4 v0, 0x3

    .line 1136
    iput v0, p0, Lcom/sshtools/client/shell/ExpectShell;->state:I

    .line 1138
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->closeHooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1140
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 885
    iget v0, p0, Lcom/sshtools/client/shell/ExpectShell;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$new$4$com-sshtools-client-shell-ExpectShell(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Lcom/sshtools/client/shell/ExpectShell$OS;
    .locals 2

    .line 702
    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;->-$$Nest$fgetremoteIdentification(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda5;-><init>(Lcom/sshtools/client/shell/ExpectShell$ExpectShellBuilder;)V

    .line 701
    invoke-static {v0, v1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticLambda6;-><init>(Lcom/sshtools/client/shell/ExpectShell;)V

    .line 702
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p1
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 728
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setPasswordErrorText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 769
    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    return-void
.end method

.method public setPasswordPrompt(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.2.0"
    .end annotation

    .line 782
    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    return-void
.end method

.method public setSudoPassword(Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1463
    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell;->sudoPassword:Ljava/util/Optional;

    return-void
.end method

.method public su(Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/SshIOException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 802
    invoke-virtual {p0, p1, v0, v0}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;ZZ)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1

    .line 803
    new-instance v0, Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sshtools/client/shell/ExpectShell$OS;Lcom/sshtools/client/shell/ExpectShell;)V

    return-object v0
.end method

.method public su(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshIOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    new-instance v1, Lcom/sshtools/client/shell/ShellDefaultMatcher;

    invoke-direct {v1}, Lcom/sshtools/client/shell/ShellDefaultMatcher;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sshtools/client/shell/ExpectShell;->su(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)Lcom/sshtools/client/shell/ExpectShell;

    move-result-object p1

    return-object p1
.end method

.method public su(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/SshIOException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .line 797
    new-instance v0, Lcom/sshtools/client/shell/ShellDefaultMatcher;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ShellDefaultMatcher;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/shell/ExpectShell;->su(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)Lcom/sshtools/client/shell/ExpectShell;

    move-result-object p1

    return-object p1
.end method

.method public su(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)Lcom/sshtools/client/shell/ExpectShell;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/SshIOException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0, p1, v0, v0}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;ZZ)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object v1

    .line 811
    new-instance v2, Lcom/sshtools/client/shell/ShellProcessController;

    invoke-direct {v2, v1, p4}, Lcom/sshtools/client/shell/ShellProcessController;-><init>(Lcom/sshtools/client/shell/ShellProcess;Lcom/sshtools/client/shell/ShellMatcher;)V

    const/16 p4, 0x400

    .line 813
    invoke-virtual {v1, p4}, Lcom/sshtools/client/shell/ShellProcess;->mark(I)V

    .line 814
    invoke-virtual {v2, p3}, Lcom/sshtools/client/shell/ShellProcessController;->expectNextLine(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 815
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 816
    const-string p3, "su password expression matched"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    :cond_0
    invoke-virtual {v2, p2}, Lcom/sshtools/client/shell/ShellProcessController;->typeAndReturn(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v2}, Lcom/sshtools/client/shell/ShellProcessController;->readLine()Ljava/lang/String;

    .line 819
    invoke-virtual {v1, p4}, Lcom/sshtools/client/shell/ShellProcess;->mark(I)V

    .line 820
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/sshtools/client/shell/ShellProcessController;->expectNextLine(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 823
    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcess;->reset()V

    goto :goto_0

    .line 821
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect password!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 825
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 826
    const-string p2, "su password expression not matched"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    :cond_3
    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcess;->reset()V

    .line 830
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcess;->isActive()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 831
    new-instance p1, Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcess;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 832
    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcess;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    iget-object p4, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-direct {p1, p2, p3, p4, p0}, Lcom/sshtools/client/shell/ExpectShell;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/sshtools/client/shell/ExpectShell$OS;Lcom/sshtools/client/shell/ExpectShell;)V

    return-object p1

    .line 834
    :cond_4
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "The command failed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xf

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public sudo(Ljava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->sudoPassword:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    new-instance v2, Lcom/sshtools/client/shell/ShellDefaultMatcher;

    invoke-direct {v2}, Lcom/sshtools/client/shell/ShellDefaultMatcher;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell;->sudo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1

    return-object p1
.end method

.method public sudo(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordPrompt:Ljava/lang/String;

    new-instance v1, Lcom/sshtools/client/shell/ShellDefaultMatcher;

    invoke-direct {v1}, Lcom/sshtools/client/shell/ShellDefaultMatcher;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sshtools/client/shell/ExpectShell;->sudo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1

    return-object p1
.end method

.method public sudo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    new-instance v0, Lcom/sshtools/client/shell/ShellDefaultMatcher;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ShellDefaultMatcher;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/shell/ExpectShell;->sudo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1

    return-object p1
.end method

.method public sudo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)Lcom/sshtools/client/shell/ShellProcess;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 858
    invoke-virtual {p0, p1, v0, v0}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;ZZ)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object p1

    .line 859
    new-instance v1, Lcom/sshtools/client/shell/ShellProcessController;

    invoke-direct {v1, p1, p4}, Lcom/sshtools/client/shell/ShellProcessController;-><init>(Lcom/sshtools/client/shell/ShellProcess;Lcom/sshtools/client/shell/ShellMatcher;)V

    const/16 p4, 0x1000

    .line 861
    invoke-virtual {p1, p4}, Lcom/sshtools/client/shell/ShellProcess;->mark(I)V

    move p4, v0

    .line 865
    :cond_0
    invoke-virtual {v1, p3}, Lcom/sshtools/client/shell/ShellProcessController;->expectNextLine(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 p4, p4, 0x1

    const/16 v3, 0xa

    if-ge p4, v3, :cond_1

    .line 866
    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcessController;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    if-eqz v2, :cond_4

    .line 869
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 870
    const-string p3, "sudo password expression matched"

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 871
    :cond_2
    invoke-virtual {v1, p2}, Lcom/sshtools/client/shell/ShellProcessController;->typeAndReturn(Ljava/lang/String;)V

    .line 872
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell;->passwordErrorText:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/sshtools/client/shell/ShellProcessController;->expectNextLine(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 875
    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->clearOutput()V

    return-object p1

    .line 873
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect password!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 877
    :cond_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 878
    const-string p2, "sudo password expression not matched"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 879
    :cond_5
    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->reset()V

    return-object p1
.end method

.method type(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1112
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/sshtools/client/shell/ExpectShell;->write([B)V

    return-void
.end method

.method type(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/shell/ExpectShell;->write([B)V

    return-void
.end method

.method typeAndReturn(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->characterEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/shell/ExpectShell;->write([B)V

    return-void
.end method

.method write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell;->startupIn:Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;

    iget-object v0, v0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
