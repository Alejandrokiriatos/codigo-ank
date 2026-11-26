.class Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;
.super Ljava/lang/Object;
.source "CordovaInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/CordovaInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityResultHolder"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private requestCode:I

.field private resultCode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetintent(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestCode(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)I
    .locals 0

    iget p0, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->requestCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetresultCode(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)I
    .locals 0

    iget p0, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->resultCode:I

    return p0
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->requestCode:I

    .line 208
    iput p2, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->resultCode:I

    .line 209
    iput-object p3, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->intent:Landroid/content/Intent;

    return-void
.end method
