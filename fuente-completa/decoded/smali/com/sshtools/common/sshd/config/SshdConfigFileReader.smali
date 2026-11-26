.class public Lcom/sshtools/common/sshd/config/SshdConfigFileReader;
.super Ljava/lang/Object;
.source "SshdConfigFileReader.java"


# static fields
.field public static final ACCEPT_ENV:Ljava/lang/String; = "AcceptEnv"

.field public static final ADDRESS_FAMILY:Ljava/lang/String; = "AddressFamily"

.field public static final ALLOW_AGENT_FORWARDING:Ljava/lang/String; = "AllowAgentForwarding"

.field static DIRECTIVES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_AUTHENTICATION:Ljava/lang/String; = "PasswordAuthentication"


# instance fields
.field private stream:Ljava/io/InputStream;


# direct methods
.method static bridge synthetic -$$Nest$fgetstream(Lcom/sshtools/common/sshd/config/SshdConfigFileReader;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->stream:Ljava/io/InputStream;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    .line 53
    const-string v1, "AcceptEnv"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AddresssFamily"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AllowAgentForwarding"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AllowGroups"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AllowTcpForwarding"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AllowUsers"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AuthorizedKeysFile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "Banner"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "ChallengeResponseAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "ChrootDirectory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "Ciphers"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "ClientAliveCountMax"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "ClientAliveInterval"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "Compression"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "DenyGroups"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "DenyUsers"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "ForceCommand"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "GatewayPorts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "GSSAPIAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "GSSAPIKeyExchange"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "GSSAPICleanupCredentials"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "GSSAPIStrictAcceptorCheck"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "GSSAPIStoreCredentialsOnRekey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "HostbasedAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "HostbasedUsesNameFromPacketOnly"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "HostKey"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "IgnoreRhosts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "IgnoreUserKnownHosts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "KerberosAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "KerberosGetAFSToken"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "KerberosOrLocalPasswd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "KerberosTicketCleanup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "KerberosUseKuserok"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "KeyRegenerationInterval"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "ListenAddress"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "LoginGraceTime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "LogLevel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "MACs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "Match"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "MaxAuthTries"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "MaxSessions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "MaxStartups"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PasswordAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PermitEmptyPasswords"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PermitOpen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PermitRootLogin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PermitTTY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PermitTunnel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PermitUserEnvironment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PidFile"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "Port"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PrintLastLog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PrintMotd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "Protocol"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "PubkeyAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AuthorizedKeysCommand"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AuthorizedKeysCommandUser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "AuthorizedKeysCommandRunAs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "RequiredAuthentications1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "RequiredAuthentications2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "RhostsRSAAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "RSAAuthentication"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "ServerKeyBits"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "ShowPatchLevel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "StrictModes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "Subsystem"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "SyslogFacility"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "TCPKeepAlive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "UseDNS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "UseLogin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "UsePAM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "UsePrivilegeSeparation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "VersionAddendum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "X11DisplayOffset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "X11Forwarding"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "X11UseLocalhost"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const-string v1, "XAuthLocation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->stream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/sshtools/common/util/IOUtils;->toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->stream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method onInvalidEntry(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public read()Lcom/sshtools/common/sshd/config/SshdConfigFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->readToBuilder()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->build()Lcom/sshtools/common/sshd/config/SshdConfigFile;

    move-result-object v0

    return-object v0
.end method

.method public readToBuilder()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->builder()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;

    invoke-direct {v1, p0, v0}, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFileReader;Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->executeWrite(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    return-object v0
.end method
