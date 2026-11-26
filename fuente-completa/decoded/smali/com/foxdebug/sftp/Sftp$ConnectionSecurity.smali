.class final Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;
.super Ljava/lang/Object;
.source "Sftp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/sftp/Sftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionSecurity"
.end annotation


# instance fields
.field private volatile failure:Lorg/json/JSONObject;

.field private final hostname:Ljava/lang/String;

.field private final port:I

.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;


# direct methods
.method static bridge synthetic -$$Nest$fgethostname(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetport(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)I
    .locals 0

    iget p0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->port:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfailure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->failure:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfigure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/sshtools/client/SshClientContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->configure(Lcom/sshtools/client/SshClientContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreport(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lorg/apache/cordova/CallbackContext;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->report(Lorg/apache/cordova/CallbackContext;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtakeFailure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->takeFailure()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->hostname:Ljava/lang/String;

    .line 144
    iput p3, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->port:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;ILcom/foxdebug/sftp/Sftp-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;I)V

    return-void
.end method

.method private configure(Lcom/sshtools/client/SshClientContext;)V
    .locals 1

    .line 148
    invoke-static {p1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$smconfigureClient(Lcom/sshtools/client/SshClientContext;)V

    .line 149
    new-instance v0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;

    invoke-direct {v0, p0}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;-><init>(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)V

    invoke-virtual {p1, v0}, Lcom/sshtools/client/SshClientContext;->setHostKeyVerification(Lcom/sshtools/common/knownhosts/HostKeyVerification;)Lcom/sshtools/client/SshClientContext;

    return-void
.end method

.method private report(Lorg/apache/cordova/CallbackContext;)Z
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->takeFailure()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 218
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private takeFailure()Lorg/json/JSONObject;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->failure:Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 224
    iput-object v1, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->failure:Lorg/json/JSONObject;

    return-object v0
.end method
