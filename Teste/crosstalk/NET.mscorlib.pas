unit NET.mscorlib;
// CrossTalk v2.0.20

interface

uses
  Atozed.CrossTalk.Middle, Atozed.CrossTalk.BaseObject, Atozed.CrossTalk.Streams, SysUtils, Windows;

type
  Unreferenced = class;
  TCTObject = class;
  BooleanArray = class;
  SByteArray = class;
  ByteArray = class;
  Int16Array = class;
  UInt16Array = class;
  Int32Array = class;
  UInt32Array = class;
  Int64Array = class;
  UInt64Array = class;
  SingleArray = class;
  DoubleArray = class;
  DecimalArray = class;
  CharArray = class;
  StringArray = class;
  StringBuilder = class;
  DateTime = class;
  TypeNET = class;

  {$SCOPEDENUMS ON}
  BindingFlags = (
    DefaultNET = 0
    , IgnoreCase = 1
    , DeclaredOnly = 2
    , Instance = 4
    , StaticNET = 8
    , PublicNET = 16
    , NonPublic = 32
    , FlattenHierarchy = 64
    , InvokeMethod = 256
    , CreateInstance = 512
    , GetField = 1024
    , SetField = 2048
    , GetProperty = 4096
    , SetProperty = 8192
    , PutDispProperty = 16384
    , PutRefDispProperty = 32768
    , ExactBinding = 65536
    , SuppressChangeType = 131072
    , OptionalParamBinding = 262144
    , IgnoreReturn = 16777216
  );
  DateTimeKind = (
    Unspecified = 0
    , Utc = 1
    , LocalNET = 2
  );
  DayOfWeek = (
    Sunday = 0
    , Monday = 1
    , Tuesday = 2
    , Wednesday = 3
    , Thursday = 4
    , Friday = 5
    , Saturday = 6
  );
  GenericParameterAttributes = (
    None = 0
    , VarianceMask = 3
    , Covariant = 1
    , Contravariant = 2
    , SpecialConstraintMask = 28
    , ReferenceTypeConstraint = 4
    , NotNullableValueTypeConstraint = 8
    , DefaultConstructorConstraint = 16
  );
  MemberTypes = (
    ConstructorNET = 1
    , Event = 2
    , Field = 4
    , Method = 8
    , PropertyNET = 16
    , TypeInfo = 32
    , Custom = 64
    , NestedType = 128
    , All = 191
  );
  TypeAttributes = (
    VisibilityMask = 7
    , NotPublic = 0
    , PublicNET = 1
    , NestedPublic = 2
    , NestedPrivate = 3
    , NestedFamily = 4
    , NestedAssembly = 5
    , NestedFamANDAssem = 6
    , NestedFamORAssem = 7
    , LayoutMask = 24
    , AutoLayout = 0
    , SequentialLayout = 8
    , ExplicitLayout = 16
    , ClassSemanticsMask = 32
    , ClassNET = 0
    , InterfaceNET = 32
    , AbstractNET = 128
    , SealedNET = 256
    , SpecialName = 1024
    , Import = 4096
    , Serializable = 8192
    , WindowsRuntime = 16384
    , StringFormatMask = 196608
    , AnsiClass = 0
    , UnicodeClass = 65536
    , AutoClass = 131072
    , CustomFormatClass = 196608
    , CustomFormatMask = 12582912
    , BeforeFieldInit = 1048576
    , ReservedMask = 264192
    , RTSpecialName = 2048
    , HasSecurity = 262144
  );
  TypeCode = (
    Empty = 0
    , ObjectNET = 1
    , DBNull = 2
    , BooleanNET = 3
    , CharNET = 4
    , SByte = 5
    , ByteNET = 6
    , Int16 = 7
    , UInt16 = 8
    , Int32 = 9
    , UInt32 = 10
    , Int64NET = 11
    , UInt64NET = 12
    , SingleNET = 13
    , DoubleNET = 14
    , Decimal = 15
    , DateTime = 16
    , StringNET = 18
  );

  TCTObject = class(TCTBaseObject)
  private
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create; overload; override;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    class function Equals(
      const aObjA: TCTObject; 
      const aObjB: TCTObject): Boolean; reintroduce; overload;
    class function ReferenceEquals(
      const aObjA: TCTObject; 
      const aObjB: TCTObject): Boolean; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

  end;

  BooleanArray = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Boolean); overload;
    function Get(
      const a0: Int32): Boolean; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Boolean read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  SByteArray = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Int8); overload;
    function Get(
      const a0: Int32): Int8; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Int8 read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  ByteArray = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    // CrossTalk Helper methods
    procedure CopyToDelphiArray(aDest: TBytes; aSrcStart: integer = 0; aDestStart: integer = 0; aLength: integer = -1);
    procedure CopyFromDelphiArray(aSrc: TBytes; aSrcStart: integer = 0; aDestStart: integer = 0; aLength: integer = -1);
    function AsDelphiArray: TBytes;

    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Byte); overload;
    function Get(
      const a0: Int32): Byte; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Byte read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  Int16Array = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Int16); overload;
    function Get(
      const a0: Int32): Int16; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Int16 read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  UInt16Array = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: UInt16); overload;
    function Get(
      const a0: Int32): UInt16; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: UInt16 read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  Int32Array = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Int32); overload;
    function Get(
      const a0: Int32): Int32; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Int32 read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  UInt32Array = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: UInt32); overload;
    function Get(
      const a0: Int32): UInt32; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: UInt32 read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  Int64Array = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Int64); overload;
    function Get(
      const a0: Int32): Int64; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Int64 read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  UInt64Array = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: UInt64); overload;
    function Get(
      const a0: Int32): UInt64; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: UInt64 read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  SingleArray = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Single); overload;
    function Get(
      const a0: Int32): Single; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Single read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  DoubleArray = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Double); overload;
    function Get(
      const a0: Int32): Double; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Double read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  DecimalArray = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Extended); overload;
    function Get(
      const a0: Int32): Extended; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Extended read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  CharArray = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: Char); overload;
    function Get(
      const a0: Int32): Char; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: Char read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  StringArray = class(TCTArray)
  private
    function IsFixedSizeRead: Boolean;
    function IsReadOnlyRead: Boolean;
    function IsSynchronizedRead: Boolean;
    function LengthRead: Int32;
    function LongLengthRead: Int64;
    function RankRead: Int32;
    function SyncRootRead: TCTObject;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const a0: Int32); reintroduce; overload;
    procedure SetMethod(
      const a0: Int32; 
      const a1: string); overload;
    function Get(
      const a0: Int32): string; overload;
    function GetValue(
      const aIndices: Int32Array): TCTObject; overload;
    function GetValue(
      const aIndex: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32): TCTObject; overload;
    function GetValue(
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32): TCTObject; overload;
    function GetValue(
      const aIndex: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64): TCTObject; overload;
    function GetValue(
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64): TCTObject; overload;
    function GetValue(
      const aIndices: Int64Array): TCTObject; overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int32; 
      const aIndex2: Int32; 
      const aIndex3: Int32); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int32Array); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndex1: Int64; 
      const aIndex2: Int64; 
      const aIndex3: Int64); overload;
    procedure SetValue(
      const aValue: TCTObject; 
      const aIndices: Int64Array); overload;
    function GetLength(
      const aDimension: Int32): Int32; overload;
    function GetLongLength(
      const aDimension: Int32): Int64; overload;
    function GetUpperBound(
      const aDimension: Int32): Int32; overload;
    function GetLowerBound(
      const aDimension: Int32): Int32; overload;
    function Clone: TCTObject; overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int32); overload;
    procedure CopyTo(
      const aArray: TCTArray; 
      const aIndex: Int64); overload;
    procedure Initialize; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Items[const aindex: Integer]: string read Get write SetMethod; default;
    property IsFixedSize: Boolean read IsFixedSizeRead;
    property IsReadOnly: Boolean read IsReadOnlyRead;
    property IsSynchronized: Boolean read IsSynchronizedRead;
    property Length: Int32 read LengthRead;
    property LongLength: Int64 read LongLengthRead;
    property Rank: Int32 read RankRead;
    property SyncRoot: TCTObject read SyncRootRead;
  end;

  StringBuilder = class(TCTBaseObject)
  private
    function CapacityRead: Int32;
    procedure CapacityWrite(
      const aValue: Int32);
    function CharsRead(
      const aIndex: Int32): Char;
    procedure CharsWrite(
      const aIndex: Int32; 
      const aValue: Char);
    function LengthRead: Int32;
    procedure LengthWrite(
      const aValue: Int32);
    function MaxCapacityRead: Int32;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create; overload; override;
    constructor Create(
      const aCapacity: Int32); reintroduce; overload;
    constructor Create(
      const aValue: string); reintroduce; overload;
    constructor Create(
      const aValue: string; 
      const aCapacity: Int32); reintroduce; overload;
    constructor Create(
      const aValue: string; 
      const aStartIndex: Int32; 
      const aLength: Int32; 
      const aCapacity: Int32); reintroduce; overload;
    constructor Create(
      const aCapacity: Int32; 
      const aMaxCapacity: Int32); reintroduce; overload;
    function EnsureCapacity(
      const aCapacity: Int32): Int32; overload;
    function ToString: string; reintroduce; overload;
    function ToString(
      const aStartIndex: Int32; 
      const aLength: Int32): string; reintroduce; overload;
    function Clear: StringBuilder; overload;
    function Append(
      const aValue: Char; 
      const aRepeatCount: Int32): StringBuilder; overload;
    function Append(
      const aValue: CharArray; 
      const aStartIndex: Int32; 
      const aCharCount: Int32): StringBuilder; overload;
    function Append(
      const aValue: string): StringBuilder; overload;
    function Append(
      const aValue: string; 
      const aStartIndex: Int32; 
      const aCount: Int32): StringBuilder; overload;
    function AppendLine: StringBuilder; overload;
    function AppendLine(
      const aValue: string): StringBuilder; overload;
    procedure CopyTo(
      const aSourceIndex: Int32; 
      const aDestination: CharArray; 
      const aDestinationIndex: Int32; 
      const aCount: Int32); overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: string; 
      const aCount: Int32): StringBuilder; overload;
    function Remove(
      const aStartIndex: Int32; 
      const aLength: Int32): StringBuilder; overload;
    function Append(
      const aValue: Boolean): StringBuilder; overload;
    function Append(
      const aValue: Int8): StringBuilder; overload;
    function Append(
      const aValue: Byte): StringBuilder; overload;
    function Append(
      const aValue: Char): StringBuilder; overload;
    function Append(
      const aValue: Int16): StringBuilder; overload;
    function Append(
      const aValue: Int32): StringBuilder; overload;
    function Append(
      const aValue: Int64): StringBuilder; overload;
    function Append(
      const aValue: Single): StringBuilder; overload;
    function Append(
      const aValue: Double): StringBuilder; overload;
    function Append(
      const aValue: Extended): StringBuilder; overload;
    function Append(
      const aValue: UInt16): StringBuilder; overload;
    function Append(
      const aValue: UInt32): StringBuilder; overload;
    function Append(
      const aValue: UInt64): StringBuilder; overload;
    function Append(
      const aValue: TCTObject): StringBuilder; overload;
    function Append(
      const aValue: CharArray): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: string): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Boolean): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Int8): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Byte): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Int16): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Char): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: CharArray): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: CharArray; 
      const aStartIndex: Int32; 
      const aCharCount: Int32): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Int32): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Int64): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Single): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Double): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: Extended): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: UInt16): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: UInt32): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: UInt64): StringBuilder; overload;
    function Insert(
      const aIndex: Int32; 
      const aValue: TCTObject): StringBuilder; overload;
    function AppendFormat(
      const aFormat: string; 
      const aArg0: TCTObject): StringBuilder; overload;
    function AppendFormat(
      const aFormat: string; 
      const aArg0: TCTObject; 
      const aArg1: TCTObject): StringBuilder; overload;
    function AppendFormat(
      const aFormat: string; 
      const aArg0: TCTObject; 
      const aArg1: TCTObject; 
      const aArg2: TCTObject): StringBuilder; overload;
    function Replace(
      const aOldValue: string; 
      const aNewValue: string): StringBuilder; overload;
    function Equals(
      const aSb: StringBuilder): Boolean; reintroduce; overload;
    function Replace(
      const aOldValue: string; 
      const aNewValue: string; 
      const aStartIndex: Int32; 
      const aCount: Int32): StringBuilder; overload;
    function Replace(
      const aOldChar: Char; 
      const aNewChar: Char): StringBuilder; overload;
    function Replace(
      const aOldChar: Char; 
      const aNewChar: Char; 
      const aStartIndex: Int32; 
      const aCount: Int32): StringBuilder; overload;
    function Append(
      const aValue: Unreferenced; 
      const aValueCount: Int32): StringBuilder; overload;
    function Equals(
      const aObj: TCTObject): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetType: TypeNET; overload;

    property Capacity: Int32 read CapacityRead write CapacityWrite;
    property Chars[const aIndex: Int32]: Char read CharsRead write CharsWrite;
    property Length: Int32 read LengthRead write LengthWrite;
    property MaxCapacity: Int32 read MaxCapacityRead;
  end;

  DateTime = class(TCTBaseObject)
  private
    function DateRead: DateTime;
    function DayRead: Int32;
    function DayOfWeekRead: DayOfWeek;
    function DayOfYearRead: Int32;
    function HourRead: Int32;
    function KindRead: DateTimeKind;
    function MillisecondRead: Int32;
    function MinuteRead: Int32;
    function MonthRead: Int32;
    class function NowRead: DateTime; static;
    function SecondRead: Int32;
    function TicksRead: Int64;
    function TimeOfDayRead: Unreferenced;
    class function TodayRead: DateTime; static;
    class function UtcNowRead: DateTime; static;
    function YearRead: Int32;
    class function MinValueRead: DateTime; static;
    class procedure MinValueWrite(const aValue: DateTime); static;
    class function MaxValueRead: DateTime; static;
    class procedure MaxValueWrite(const aValue: DateTime); static;
  protected
    class function CTFullTypeName: string; override;
  public
    constructor Create(
      const aTicks: Int64); reintroduce; overload;
    constructor Create(
      const aTicks: Int64; 
      const aKind: DateTimeKind); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32; 
      const aCalendar: Unreferenced); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32; 
      const aHour: Int32; 
      const aMinute: Int32; 
      const aSecond: Int32); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32; 
      const aHour: Int32; 
      const aMinute: Int32; 
      const aSecond: Int32; 
      const aKind: DateTimeKind); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32; 
      const aHour: Int32; 
      const aMinute: Int32; 
      const aSecond: Int32; 
      const aCalendar: Unreferenced); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32; 
      const aHour: Int32; 
      const aMinute: Int32; 
      const aSecond: Int32; 
      const aMillisecond: Int32); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32; 
      const aHour: Int32; 
      const aMinute: Int32; 
      const aSecond: Int32; 
      const aMillisecond: Int32; 
      const aKind: DateTimeKind); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32; 
      const aHour: Int32; 
      const aMinute: Int32; 
      const aSecond: Int32; 
      const aMillisecond: Int32; 
      const aCalendar: Unreferenced); reintroduce; overload;
    constructor Create(
      const aYear: Int32; 
      const aMonth: Int32; 
      const aDay: Int32; 
      const aHour: Int32; 
      const aMinute: Int32; 
      const aSecond: Int32; 
      const aMillisecond: Int32; 
      const aCalendar: Unreferenced; 
      const aKind: DateTimeKind); reintroduce; overload;
    function AddNET(
      const aValue: Unreferenced): DateTime; overload;
    function AddDays(
      const aValue: Double): DateTime; overload;
    function AddHours(
      const aValue: Double): DateTime; overload;
    function AddMilliseconds(
      const aValue: Double): DateTime; overload;
    function AddMinutes(
      const aValue: Double): DateTime; overload;
    function AddMonths(
      const aMonths: Int32): DateTime; overload;
    function AddSeconds(
      const aValue: Double): DateTime; overload;
    function AddTicks(
      const aValue: Int64): DateTime; overload;
    function AddYears(
      const aValue: Int32): DateTime; overload;
    class function Compare(
      const aT1: DateTime; 
      const aT2: DateTime): Int32; overload;
    function CompareTo(
      const aValue: TCTObject): Int32; overload;
    function CompareTo(
      const aValue: DateTime): Int32; overload;
    class function DaysInMonth(
      const aYear: Int32; 
      const aMonth: Int32): Int32; overload;
    function Equals(
      const aValue: TCTObject): Boolean; reintroduce; overload;
    function Equals(
      const aValue: DateTime): Boolean; reintroduce; overload;
    class function Equals(
      const aT1: DateTime; 
      const aT2: DateTime): Boolean; reintroduce; overload;
    class function FromBinary(
      const aDateData: Int64): DateTime; overload;
    class function FromFileTime(
      const aFileTime: Int64): DateTime; overload;
    class function FromFileTimeUtc(
      const aFileTime: Int64): DateTime; overload;
    class function FromOADate(
      const aD: Double): DateTime; overload;
    function IsDaylightSavingTime: Boolean; overload;
    class function SpecifyKind(
      const aValue: DateTime; 
      const aKind: DateTimeKind): DateTime; overload;
    function ToBinary: Int64; overload;
    function GetHashCode: Int32; reintroduce; overload;
    class function IsLeapYear(
      const aYear: Int32): Boolean; overload;
    class function Parse(
      const s: string): DateTime; overload;
    function Subtract(
      const aValue: DateTime): Unreferenced; overload;
    function Subtract(
      const aValue: Unreferenced): DateTime; overload;
    function ToOADate: Double; overload;
    function ToFileTime: Int64; overload;
    function ToFileTimeUtc: Int64; overload;
    function ToLocalTime: DateTime; overload;
    function ToLongDateString: string; overload;
    function ToLongTimeString: string; overload;
    function ToShortDateString: string; overload;
    function ToShortTimeString: string; overload;
    function ToString: string; reintroduce; overload;
    function ToString(
      const aFormat: string): string; reintroduce; overload;
    function ToUniversalTime: DateTime; overload;
    function GetDateTimeFormats: StringArray; overload;
    function GetDateTimeFormats(
      const aFormat: Char): StringArray; overload;
    function GetTypeCode: TypeCode; overload;
    function GetType: TypeNET; overload;

    property Date: DateTime read DateRead;
    property Day: Int32 read DayRead;
    property DayOfWeek: DayOfWeek read DayOfWeekRead;
    property DayOfYear: Int32 read DayOfYearRead;
    property Hour: Int32 read HourRead;
    property Kind: DateTimeKind read KindRead;
    property Millisecond: Int32 read MillisecondRead;
    property Minute: Int32 read MinuteRead;
    property Month: Int32 read MonthRead;
    class property Now: DateTime read NowRead;
    property Second: Int32 read SecondRead;
    property Ticks: Int64 read TicksRead;
    property TimeOfDay: Unreferenced read TimeOfDayRead;
    class property Today: DateTime read TodayRead;
    class property UtcNow: DateTime read UtcNowRead;
    property Year: Int32 read YearRead;
    class property MinValue: DateTime read MinValueRead write MinValueWrite;
    class property MaxValue: DateTime read MaxValueRead write MaxValueWrite;
  end;

  TypeNET = class(TCTBaseObject)
  private
    function AssemblyRead: Unreferenced;
    function AssemblyQualifiedNameRead: string;
    function AttributesRead: TypeAttributes;
    function BaseTypeRead: TypeNET;
    function ContainsGenericParametersRead: Boolean;
    function DeclaringMethodRead: Unreferenced;
    function DeclaringTypeRead: TypeNET;
    class function DefaultBinderRead: Unreferenced; static;
    function FullNameRead: string;
    function GenericParameterAttributesRead: GenericParameterAttributes;
    function GenericParameterPositionRead: Int32;
    function GUIDRead: Unreferenced;
    function HasElementTypeRead: Boolean;
    function IsAbstractRead: Boolean;
    function IsAnsiClassRead: Boolean;
    function IsArrayRead: Boolean;
    function IsAutoClassRead: Boolean;
    function IsAutoLayoutRead: Boolean;
    function IsByRefRead: Boolean;
    function IsClassRead: Boolean;
    function IsCOMObjectRead: Boolean;
    function IsConstructedGenericTypeRead: Boolean;
    function IsContextfulRead: Boolean;
    function IsEnumRead: Boolean;
    function IsExplicitLayoutRead: Boolean;
    function IsGenericParameterRead: Boolean;
    function IsGenericTypeRead: Boolean;
    function IsGenericTypeDefinitionRead: Boolean;
    function IsImportRead: Boolean;
    function IsInterfaceRead: Boolean;
    function IsLayoutSequentialRead: Boolean;
    function IsMarshalByRefRead: Boolean;
    function IsNestedRead: Boolean;
    function IsNestedAssemblyRead: Boolean;
    function IsNestedFamANDAssemRead: Boolean;
    function IsNestedFamilyRead: Boolean;
    function IsNestedFamORAssemRead: Boolean;
    function IsNestedPrivateRead: Boolean;
    function IsNestedPublicRead: Boolean;
    function IsNotPublicRead: Boolean;
    function IsPointerRead: Boolean;
    function IsPrimitiveRead: Boolean;
    function IsPublicRead: Boolean;
    function IsSealedRead: Boolean;
    function IsSecurityCriticalRead: Boolean;
    function IsSecuritySafeCriticalRead: Boolean;
    function IsSecurityTransparentRead: Boolean;
    function IsSerializableRead: Boolean;
    function IsSpecialNameRead: Boolean;
    function IsUnicodeClassRead: Boolean;
    function IsValueTypeRead: Boolean;
    function IsVisibleRead: Boolean;
    function MemberTypeRead: MemberTypes;
    function MetadataTokenRead: Int32;
    function ModuleRead: Unreferenced;
    function NameRead: string;
    function NamespaceRead: string;
    function ReflectedTypeRead: TypeNET;
    function StructLayoutAttributeRead: Unreferenced;
    function TypeHandleRead: Unreferenced;
    function TypeInitializerRead: Unreferenced;
    function UnderlyingSystemTypeRead: TypeNET;
    class function MissingRead: TCTObject; static;
    class procedure MissingWrite(const aValue: TCTObject); static;
    class function DelimiterRead: Char; static;
    class procedure DelimiterWrite(const aValue: Char); static;
  protected
    class function CTFullTypeName: string; override;
  public
    class function GetType(
      const aTypeName: string; 
      const aThrowOnError: Boolean; 
      const aIgnoreCase: Boolean): TypeNET; overload;
    class function GetType(
      const aTypeName: string; 
      const aThrowOnError: Boolean): TypeNET; overload;
    class function GetType(
      const aTypeName: string): TypeNET; overload;
    class function ReflectionOnlyGetType(
      const aTypeName: string; 
      const aThrowIfNotFound: Boolean; 
      const aIgnoreCase: Boolean): TypeNET; overload;
    function MakePointerType: TypeNET; overload;
    function MakeByRefType: TypeNET; overload;
    function MakeArrayType: TypeNET; overload;
    function MakeArrayType(
      const aRank: Int32): TypeNET; overload;
    class function GetTypeFromProgID(
      const aProgID: string): TypeNET; overload;
    class function GetTypeFromProgID(
      const aProgID: string; 
      const aThrowOnError: Boolean): TypeNET; overload;
    class function GetTypeFromProgID(
      const aProgID: string; 
      const aServer: string): TypeNET; overload;
    class function GetTypeFromProgID(
      const aProgID: string; 
      const aServer: string; 
      const aThrowOnError: Boolean): TypeNET; overload;
    class function GetTypeFromCLSID(
      const aClsid: Unreferenced): TypeNET; overload;
    class function GetTypeFromCLSID(
      const aClsid: Unreferenced; 
      const aThrowOnError: Boolean): TypeNET; overload;
    class function GetTypeFromCLSID(
      const aClsid: Unreferenced; 
      const aServer: string): TypeNET; overload;
    class function GetTypeFromCLSID(
      const aClsid: Unreferenced; 
      const aServer: string; 
      const aThrowOnError: Boolean): TypeNET; overload;
    class function GetTypeCode(
      const aType: TypeNET): TypeCode; overload;
    class function GetTypeHandle(
      const aO: TCTObject): Unreferenced; overload;
    class function GetTypeFromHandle(
      const aHandle: Unreferenced): TypeNET; overload;
    function GetArrayRank: Int32; overload;
    function GetMethod(
      const aName: string; 
      const aBindingAttr: BindingFlags): Unreferenced; overload;
    function GetMethod(
      const aName: string): Unreferenced; overload;
    function GetField(
      const aName: string; 
      const aBindingAttr: BindingFlags): Unreferenced; overload;
    function GetField(
      const aName: string): Unreferenced; overload;
    function GetInterface(
      const aName: string): TypeNET; overload;
    function GetInterface(
      const aName: string; 
      const aIgnoreCase: Boolean): TypeNET; overload;
    function GetEvent(
      const aName: string): Unreferenced; overload;
    function GetEvent(
      const aName: string; 
      const aBindingAttr: BindingFlags): Unreferenced; overload;
    function GetProperty(
      const aName: string; 
      const aBindingAttr: BindingFlags): Unreferenced; overload;
    function GetProperty(
      const aName: string; 
      const aReturnType: TypeNET): Unreferenced; overload;
    function GetProperty(
      const aName: string): Unreferenced; overload;
    function GetNestedType(
      const aName: string): TypeNET; overload;
    function GetNestedType(
      const aName: string; 
      const aBindingAttr: BindingFlags): TypeNET; overload;
    function GetElementType: TypeNET; overload;
    function GetGenericTypeDefinition: TypeNET; overload;
    function GetEnumNames: StringArray; overload;
    function GetEnumValues: TCTArray; overload;
    function GetEnumUnderlyingType: TypeNET; overload;
    function IsEnumDefined(
      const aValue: TCTObject): Boolean; overload;
    function GetEnumName(
      const aValue: TCTObject): string; overload;
    function IsSubclassOf(
      const aC: TypeNET): Boolean; overload;
    function IsInstanceOfType(
      const aO: TCTObject): Boolean; overload;
    function IsAssignableFrom(
      const aC: TypeNET): Boolean; overload;
    function IsEquivalentTo(
      const aOther: TypeNET): Boolean; overload;
    function ToString: string; reintroduce; overload;
    function Equals(
      const aO: TCTObject): Boolean; reintroduce; overload;
    function Equals(
      const aO: TypeNET): Boolean; reintroduce; overload;
    function GetHashCode: Int32; reintroduce; overload;
    function GetInterfaceMap(
      const aInterfaceType: TypeNET): Unreferenced; overload;
    function GetType: TypeNET; overload;
    function IsDefined(
      const aAttributeType: TypeNET; 
      const aInherit: Boolean): Boolean; overload;
    function GetType1: TypeNET; overload;

    property Assembly: Unreferenced read AssemblyRead;
    property AssemblyQualifiedName: string read AssemblyQualifiedNameRead;
    property Attributes: TypeAttributes read AttributesRead;
    property BaseType: TypeNET read BaseTypeRead;
    property ContainsGenericParameters: Boolean read ContainsGenericParametersRead;
    property DeclaringMethod: Unreferenced read DeclaringMethodRead;
    property DeclaringType: TypeNET read DeclaringTypeRead;
    class property DefaultBinder: Unreferenced read DefaultBinderRead;
    property FullName: string read FullNameRead;
    property GenericParameterAttributes: GenericParameterAttributes read GenericParameterAttributesRead;
    property GenericParameterPosition: Int32 read GenericParameterPositionRead;
    property GUID: Unreferenced read GUIDRead;
    property HasElementType: Boolean read HasElementTypeRead;
    property IsAbstract: Boolean read IsAbstractRead;
    property IsAnsiClass: Boolean read IsAnsiClassRead;
    property IsArray: Boolean read IsArrayRead;
    property IsAutoClass: Boolean read IsAutoClassRead;
    property IsAutoLayout: Boolean read IsAutoLayoutRead;
    property IsByRef: Boolean read IsByRefRead;
    property IsClass: Boolean read IsClassRead;
    property IsCOMObject: Boolean read IsCOMObjectRead;
    property IsConstructedGenericType: Boolean read IsConstructedGenericTypeRead;
    property IsContextful: Boolean read IsContextfulRead;
    property IsEnum: Boolean read IsEnumRead;
    property IsExplicitLayout: Boolean read IsExplicitLayoutRead;
    property IsGenericParameter: Boolean read IsGenericParameterRead;
    property IsGenericType: Boolean read IsGenericTypeRead;
    property IsGenericTypeDefinition: Boolean read IsGenericTypeDefinitionRead;
    property IsImport: Boolean read IsImportRead;
    property IsInterface: Boolean read IsInterfaceRead;
    property IsLayoutSequential: Boolean read IsLayoutSequentialRead;
    property IsMarshalByRef: Boolean read IsMarshalByRefRead;
    property IsNested: Boolean read IsNestedRead;
    property IsNestedAssembly: Boolean read IsNestedAssemblyRead;
    property IsNestedFamANDAssem: Boolean read IsNestedFamANDAssemRead;
    property IsNestedFamily: Boolean read IsNestedFamilyRead;
    property IsNestedFamORAssem: Boolean read IsNestedFamORAssemRead;
    property IsNestedPrivate: Boolean read IsNestedPrivateRead;
    property IsNestedPublic: Boolean read IsNestedPublicRead;
    property IsNotPublic: Boolean read IsNotPublicRead;
    property IsPointer: Boolean read IsPointerRead;
    property IsPrimitive: Boolean read IsPrimitiveRead;
    property IsPublic: Boolean read IsPublicRead;
    property IsSealed: Boolean read IsSealedRead;
    property IsSecurityCritical: Boolean read IsSecurityCriticalRead;
    property IsSecuritySafeCritical: Boolean read IsSecuritySafeCriticalRead;
    property IsSecurityTransparent: Boolean read IsSecurityTransparentRead;
    property IsSerializable: Boolean read IsSerializableRead;
    property IsSpecialName: Boolean read IsSpecialNameRead;
    property IsUnicodeClass: Boolean read IsUnicodeClassRead;
    property IsValueType: Boolean read IsValueTypeRead;
    property IsVisible: Boolean read IsVisibleRead;
    property MemberType: MemberTypes read MemberTypeRead;
    property MetadataToken: Int32 read MetadataTokenRead;
    property Module: Unreferenced read ModuleRead;
    property Name: string read NameRead;
    property Namespace: string read NamespaceRead;
    property ReflectedType: TypeNET read ReflectedTypeRead;
    property StructLayoutAttribute: Unreferenced read StructLayoutAttributeRead;
    property TypeHandle: Unreferenced read TypeHandleRead;
    property TypeInitializer: Unreferenced read TypeInitializerRead;
    property UnderlyingSystemType: TypeNET read UnderlyingSystemTypeRead;
    class property Missing: TCTObject read MissingRead write MissingWrite;
    class property Delimiter: Char read DelimiterRead write DelimiterWrite;
  end;

  Unreferenced = class(TCTObject)
  end;

implementation

uses
  Atozed.CrossTalk.Right, Atozed.CrossTalk.Exception, Atozed.CrossTalk.Boxes;

{System.Object}

class function TCTObject.CTFullTypeName: string;
begin
  Result := 'System.Object'
end;


constructor TCTObject.Create;
begin
  TRight.ObjectCreate(Self, 'System.Object', 0)
end;

function TCTObject.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function TCTObject.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

class function TCTObject.Equals(const aObjA: TCTObject;
const aObjB: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObjA);
  xParams.Write(aObjB);
  with TRight.MethodCall(nil, CTFullTypeName, 'Equals', 663116540, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

class function TCTObject.ReferenceEquals(const aObjA: TCTObject;
const aObjB: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObjA);
  xParams.Write(aObjB);
  with TRight.MethodCall(nil, CTFullTypeName, 'ReferenceEquals', 663116540, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TCTObject.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function TCTObject.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Boolean[]}

class function BooleanArray.CTFullTypeName: string;
begin
  Result := 'System.Boolean[]'
end;


function BooleanArray.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function BooleanArray.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function BooleanArray.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function BooleanArray.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function BooleanArray.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function BooleanArray.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function BooleanArray.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor BooleanArray.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Boolean[]', 1453052650, xParams)
end;

procedure BooleanArray.SetMethod(const a0: Int32;
const a1: Boolean);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', 1076219813, xParams) do try
  finally Free; end;
end;

function BooleanArray.Get(const a0: Int32): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function BooleanArray.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function BooleanArray.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function BooleanArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function BooleanArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function BooleanArray.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function BooleanArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function BooleanArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function BooleanArray.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure BooleanArray.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function BooleanArray.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function BooleanArray.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function BooleanArray.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function BooleanArray.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function BooleanArray.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure BooleanArray.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure BooleanArray.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function BooleanArray.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function BooleanArray.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function BooleanArray.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function BooleanArray.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.SByte[]}

class function SByteArray.CTFullTypeName: string;
begin
  Result := 'System.SByte[]'
end;


function SByteArray.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SByteArray.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SByteArray.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SByteArray.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SByteArray.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function SByteArray.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SByteArray.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor SByteArray.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.SByte[]', 1453052650, xParams)
end;

procedure SByteArray.SetMethod(const a0: Int32;
const a1: Int8);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', -1002923677, xParams) do try
  finally Free; end;
end;

function SByteArray.Get(const a0: Int32): Int8;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadInt8;
  finally Free; end;
end;

function SByteArray.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SByteArray.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SByteArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SByteArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SByteArray.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SByteArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SByteArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SByteArray.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure SByteArray.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure SByteArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure SByteArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure SByteArray.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure SByteArray.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure SByteArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure SByteArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure SByteArray.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function SByteArray.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SByteArray.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function SByteArray.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SByteArray.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SByteArray.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure SByteArray.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure SByteArray.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure SByteArray.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function SByteArray.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function SByteArray.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SByteArray.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SByteArray.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

procedure ByteArray.CopyToDelphiArray(aDest: TBytes; aSrcStart: integer = 0; aDestStart: integer = 0; aLength: integer = -1);
begin
  TRight.CopyToDelphiArray(Self, aDest[0], System.Length(aDest), aSrcStart, aDestStart, aLength);
end;

procedure ByteArray.CopyFromDelphiArray(aSrc: TBytes; aSrcStart: integer = 0; aDestStart: integer = 0; aLength: integer = -1);
begin
  TRight.CopyFromDelphiArray(aSrc[0], System.Length(aSrc), Self, aSrcStart, aDestStart, aLength);
end;

function ByteArray.AsDelphiArray: TBytes;
begin
  SetLength(Result, Length);
  CopyToDelphiArray(Result);
end;
{System.Byte[]}

class function ByteArray.CTFullTypeName: string;
begin
  Result := 'System.Byte[]'
end;


function ByteArray.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function ByteArray.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function ByteArray.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function ByteArray.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function ByteArray.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function ByteArray.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function ByteArray.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor ByteArray.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Byte[]', 1453052650, xParams)
end;

procedure ByteArray.SetMethod(const a0: Int32;
const a1: Byte);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', -1933142447, xParams) do try
  finally Free; end;
end;

function ByteArray.Get(const a0: Int32): Byte;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadUInt8;
  finally Free; end;
end;

function ByteArray.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function ByteArray.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function ByteArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function ByteArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function ByteArray.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function ByteArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function ByteArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function ByteArray.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure ByteArray.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure ByteArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure ByteArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure ByteArray.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure ByteArray.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure ByteArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure ByteArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure ByteArray.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function ByteArray.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function ByteArray.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function ByteArray.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function ByteArray.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function ByteArray.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure ByteArray.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure ByteArray.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure ByteArray.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function ByteArray.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function ByteArray.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function ByteArray.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function ByteArray.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Int16[]}

class function Int16Array.CTFullTypeName: string;
begin
  Result := 'System.Int16[]'
end;


function Int16Array.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int16Array.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int16Array.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int16Array.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int16Array.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function Int16Array.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int16Array.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor Int16Array.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Int16[]', 1453052650, xParams)
end;

procedure Int16Array.SetMethod(const a0: Int32;
const a1: Int16);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', 2011816954, xParams) do try
  finally Free; end;
end;

function Int16Array.Get(const a0: Int32): Int16;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadInt16;
  finally Free; end;
end;

function Int16Array.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int16Array.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int16Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int16Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int16Array.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int16Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int16Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int16Array.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure Int16Array.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure Int16Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure Int16Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure Int16Array.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure Int16Array.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure Int16Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure Int16Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure Int16Array.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function Int16Array.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int16Array.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function Int16Array.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int16Array.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int16Array.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure Int16Array.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure Int16Array.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure Int16Array.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function Int16Array.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function Int16Array.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int16Array.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int16Array.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.UInt16[]}

class function UInt16Array.CTFullTypeName: string;
begin
  Result := 'System.UInt16[]'
end;


function UInt16Array.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt16Array.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt16Array.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt16Array.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt16Array.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function UInt16Array.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt16Array.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor UInt16Array.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.UInt16[]', 1453052650, xParams)
end;

procedure UInt16Array.SetMethod(const a0: Int32;
const a1: UInt16);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', -593069745, xParams) do try
  finally Free; end;
end;

function UInt16Array.Get(const a0: Int32): UInt16;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadUInt16;
  finally Free; end;
end;

function UInt16Array.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt16Array.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt16Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt16Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt16Array.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt16Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt16Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt16Array.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure UInt16Array.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function UInt16Array.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt16Array.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function UInt16Array.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt16Array.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt16Array.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure UInt16Array.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure UInt16Array.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function UInt16Array.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function UInt16Array.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt16Array.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt16Array.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Int32[]}

class function Int32Array.CTFullTypeName: string;
begin
  Result := 'System.Int32[]'
end;


function Int32Array.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int32Array.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int32Array.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int32Array.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int32Array.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function Int32Array.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int32Array.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor Int32Array.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Int32[]', 1453052650, xParams)
end;

procedure Int32Array.SetMethod(const a0: Int32;
const a1: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', 268563088, xParams) do try
  finally Free; end;
end;

function Int32Array.Get(const a0: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int32Array.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int32Array.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int32Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int32Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int32Array.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int32Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int32Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int32Array.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure Int32Array.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure Int32Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure Int32Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure Int32Array.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure Int32Array.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure Int32Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure Int32Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure Int32Array.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function Int32Array.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int32Array.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function Int32Array.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int32Array.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int32Array.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure Int32Array.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure Int32Array.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure Int32Array.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function Int32Array.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function Int32Array.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int32Array.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int32Array.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.UInt32[]}

class function UInt32Array.CTFullTypeName: string;
begin
  Result := 'System.UInt32[]'
end;


function UInt32Array.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt32Array.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt32Array.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt32Array.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt32Array.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function UInt32Array.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt32Array.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor UInt32Array.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.UInt32[]', 1453052650, xParams)
end;

procedure UInt32Array.SetMethod(const a0: Int32;
const a1: UInt32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', -1152489435, xParams) do try
  finally Free; end;
end;

function UInt32Array.Get(const a0: Int32): UInt32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadUInt32;
  finally Free; end;
end;

function UInt32Array.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt32Array.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt32Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt32Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt32Array.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt32Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt32Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt32Array.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure UInt32Array.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function UInt32Array.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt32Array.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function UInt32Array.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt32Array.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt32Array.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure UInt32Array.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure UInt32Array.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function UInt32Array.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function UInt32Array.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt32Array.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt32Array.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Int64[]}

class function Int64Array.CTFullTypeName: string;
begin
  Result := 'System.Int64[]'
end;


function Int64Array.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int64Array.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int64Array.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int64Array.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int64Array.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function Int64Array.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int64Array.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor Int64Array.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Int64[]', 1453052650, xParams)
end;

procedure Int64Array.SetMethod(const a0: Int32;
const a1: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', 1083217917, xParams) do try
  finally Free; end;
end;

function Int64Array.Get(const a0: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function Int64Array.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int64Array.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int64Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int64Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int64Array.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int64Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int64Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function Int64Array.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure Int64Array.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure Int64Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure Int64Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure Int64Array.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure Int64Array.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure Int64Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure Int64Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure Int64Array.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function Int64Array.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int64Array.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function Int64Array.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int64Array.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int64Array.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure Int64Array.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure Int64Array.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure Int64Array.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function Int64Array.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function Int64Array.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function Int64Array.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function Int64Array.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.UInt64[]}

class function UInt64Array.CTFullTypeName: string;
begin
  Result := 'System.UInt64[]'
end;


function UInt64Array.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt64Array.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt64Array.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt64Array.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt64Array.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function UInt64Array.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt64Array.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor UInt64Array.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.UInt64[]', 1453052650, xParams)
end;

procedure UInt64Array.SetMethod(const a0: Int32;
const a1: UInt64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', -337703608, xParams) do try
  finally Free; end;
end;

function UInt64Array.Get(const a0: Int32): UInt64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadUInt64;
  finally Free; end;
end;

function UInt64Array.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt64Array.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt64Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt64Array.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt64Array.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt64Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt64Array.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function UInt64Array.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure UInt64Array.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function UInt64Array.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt64Array.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function UInt64Array.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt64Array.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt64Array.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure UInt64Array.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure UInt64Array.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function UInt64Array.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function UInt64Array.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function UInt64Array.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function UInt64Array.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Single[]}

class function SingleArray.CTFullTypeName: string;
begin
  Result := 'System.Single[]'
end;


function SingleArray.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SingleArray.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SingleArray.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SingleArray.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SingleArray.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function SingleArray.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SingleArray.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor SingleArray.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Single[]', 1453052650, xParams)
end;

procedure SingleArray.SetMethod(const a0: Int32;
const a1: Single);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', 260309574, xParams) do try
  finally Free; end;
end;

function SingleArray.Get(const a0: Int32): Single;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadSingle;
  finally Free; end;
end;

function SingleArray.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SingleArray.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SingleArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SingleArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SingleArray.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SingleArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SingleArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function SingleArray.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure SingleArray.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure SingleArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure SingleArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure SingleArray.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure SingleArray.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure SingleArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure SingleArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure SingleArray.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function SingleArray.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SingleArray.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function SingleArray.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SingleArray.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SingleArray.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure SingleArray.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure SingleArray.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure SingleArray.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function SingleArray.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function SingleArray.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function SingleArray.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function SingleArray.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Double[]}

class function DoubleArray.CTFullTypeName: string;
begin
  Result := 'System.Double[]'
end;


function DoubleArray.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DoubleArray.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DoubleArray.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DoubleArray.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DoubleArray.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function DoubleArray.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DoubleArray.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor DoubleArray.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Double[]', 1453052650, xParams)
end;

procedure DoubleArray.SetMethod(const a0: Int32;
const a1: Double);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', 1531581882, xParams) do try
  finally Free; end;
end;

function DoubleArray.Get(const a0: Int32): Double;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadDouble;
  finally Free; end;
end;

function DoubleArray.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DoubleArray.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DoubleArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DoubleArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DoubleArray.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DoubleArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DoubleArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DoubleArray.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure DoubleArray.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function DoubleArray.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DoubleArray.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function DoubleArray.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DoubleArray.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DoubleArray.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure DoubleArray.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure DoubleArray.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function DoubleArray.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function DoubleArray.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DoubleArray.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DoubleArray.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Decimal[]}

class function DecimalArray.CTFullTypeName: string;
begin
  Result := 'System.Decimal[]'
end;


function DecimalArray.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DecimalArray.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DecimalArray.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DecimalArray.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DecimalArray.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function DecimalArray.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DecimalArray.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor DecimalArray.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Decimal[]', 1453052650, xParams)
end;

procedure DecimalArray.SetMethod(const a0: Int32;
const a1: Extended);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', 1788517386, xParams) do try
  finally Free; end;
end;

function DecimalArray.Get(const a0: Int32): Extended;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadDecimal;
  finally Free; end;
end;

function DecimalArray.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DecimalArray.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DecimalArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DecimalArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DecimalArray.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DecimalArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DecimalArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function DecimalArray.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure DecimalArray.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function DecimalArray.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DecimalArray.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function DecimalArray.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DecimalArray.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DecimalArray.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure DecimalArray.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure DecimalArray.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function DecimalArray.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function DecimalArray.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DecimalArray.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DecimalArray.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Char[]}

class function CharArray.CTFullTypeName: string;
begin
  Result := 'System.Char[]'
end;


function CharArray.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function CharArray.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function CharArray.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function CharArray.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function CharArray.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function CharArray.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function CharArray.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor CharArray.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.Char[]', 1453052650, xParams)
end;

procedure CharArray.SetMethod(const a0: Int32;
const a1: Char);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', 1181575702, xParams) do try
  finally Free; end;
end;

function CharArray.Get(const a0: Int32): Char;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadChar;
  finally Free; end;
end;

function CharArray.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function CharArray.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function CharArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function CharArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function CharArray.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function CharArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function CharArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function CharArray.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure CharArray.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure CharArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure CharArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure CharArray.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure CharArray.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure CharArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure CharArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure CharArray.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function CharArray.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function CharArray.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function CharArray.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function CharArray.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function CharArray.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure CharArray.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure CharArray.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure CharArray.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function CharArray.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function CharArray.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function CharArray.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function CharArray.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.String[]}

class function StringArray.CTFullTypeName: string;
begin
  Result := 'System.String[]'
end;


function StringArray.IsFixedSizeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsFixedSize') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function StringArray.IsReadOnlyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsReadOnly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function StringArray.IsSynchronizedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSynchronized') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function StringArray.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function StringArray.LongLengthRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'LongLength') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function StringArray.RankRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Rank') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function StringArray.SyncRootRead: TCTObject;
begin
  with TRight.GetPropValue(Self, '', 'SyncRoot') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

constructor StringArray.Create(const a0: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  TRight.ObjectCreate(Self, 'System.String[]', 1453052650, xParams)
end;

procedure StringArray.SetMethod(const a0: Int32;
const a1: string);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  xParams.Write(a1);
  with TRight.MethodCall(Self, '', 'Set', -994989985, xParams) do try
  finally Free; end;
end;

function StringArray.Get(const a0: Int32): string;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(a0);
  with TRight.MethodCall(Self, '', 'Get', 1453052650, xParams) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function StringArray.GetValue(const aIndices: Int32Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', 228177734, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function StringArray.GetValue(const aIndex: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 1453052650, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function StringArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', 268563088, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function StringArray.GetValue(const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -577567871, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function StringArray.GetValue(const aIndex: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'GetValue', 101365639, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function StringArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'GetValue', -865543371, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function StringArray.GetValue(const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'GetValue', -893395175, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

function StringArray.GetValue(const aIndices: Int64Array): TCTObject;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'GetValue', -535664662, xParams) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure StringArray.SetValue(const aValue: TCTObject;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 1928026717, xParams) do try
  finally Free; end;
end;

procedure StringArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', -1037867858, xParams) do try
  finally Free; end;
end;

procedure StringArray.SetValue(const aValue: TCTObject;
const aIndex1: Int32;
const aIndex2: Int32;
const aIndex3: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 965947655, xParams) do try
  finally Free; end;
end;

procedure StringArray.SetValue(const aValue: TCTObject;
const aIndices: Int32Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', 1165926491, xParams) do try
  finally Free; end;
end;

procedure StringArray.SetValue(const aValue: TCTObject;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'SetValue', 578436912, xParams) do try
  finally Free; end;
end;

procedure StringArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  with TRight.MethodCall(Self, '', 'SetValue', 508185867, xParams) do try
  finally Free; end;
end;

procedure StringArray.SetValue(const aValue: TCTObject;
const aIndex1: Int64;
const aIndex2: Int64;
const aIndex3: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndex1);
  xParams.Write(aIndex2);
  xParams.Write(aIndex3);
  with TRight.MethodCall(Self, '', 'SetValue', 784330143, xParams) do try
  finally Free; end;
end;

procedure StringArray.SetValue(const aValue: TCTObject;
const aIndices: Int64Array);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aIndices);
  with TRight.MethodCall(Self, '', 'SetValue', -1460309769, xParams) do try
  finally Free; end;
end;

function StringArray.GetLength(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLength', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function StringArray.GetLongLength(const aDimension: Int32): Int64;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLongLength', 1453052650, xParams) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function StringArray.GetUpperBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetUpperBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function StringArray.GetLowerBound(const aDimension: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDimension);
  with TRight.MethodCall(Self, '', 'GetLowerBound', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function StringArray.Clone: TCTObject;
begin
  with TRight.MethodCall(Self, '', 'Clone', 0) do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

procedure StringArray.CopyTo(const aArray: TCTArray;
const aIndex: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -1750330002, xParams) do try
  finally Free; end;
end;

procedure StringArray.CopyTo(const aArray: TCTArray;
const aIndex: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aArray);
  xParams.Write(aIndex);
  with TRight.MethodCall(Self, '', 'CopyTo', -952274941, xParams) do try
  finally Free; end;
end;

procedure StringArray.Initialize;
begin
  with TRight.MethodCall(Self, '', 'Initialize', 0) do try
  finally Free; end;
end;

function StringArray.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function StringArray.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function StringArray.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function StringArray.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Text.StringBuilder}

class function StringBuilder.CTFullTypeName: string;
begin
  Result := 'System.Text.StringBuilder'
end;


function StringBuilder.CapacityRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Capacity') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

procedure StringBuilder.CapacityWrite(const aValue: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  TRight.SetPropValue(Self, '', 'Capacity', TBoxInt32.Create(aValue), xParams);
end;

function StringBuilder.CharsRead(const aIndex: Int32): Char;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  with TRight.GetPropValue(Self, '', 'Chars', xParams) do try
    Result := Results.ReadChar;
  finally Free; end;
end;

procedure StringBuilder.CharsWrite(const aIndex: Int32;
const aValue: Char);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  TRight.SetPropValue(Self, '', 'Chars', TBoxChar.Create(aValue), xParams);
end;

function StringBuilder.LengthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Length') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

procedure StringBuilder.LengthWrite(const aValue: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  TRight.SetPropValue(Self, '', 'Length', TBoxInt32.Create(aValue), xParams);
end;

function StringBuilder.MaxCapacityRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'MaxCapacity') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

constructor StringBuilder.Create;
begin
  TRight.ObjectCreate(Self, 'System.Text.StringBuilder', 0)
end;

constructor StringBuilder.Create(const aCapacity: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aCapacity);
  TRight.ObjectCreate(Self, 'System.Text.StringBuilder', 1453052650, xParams)
end;

constructor StringBuilder.Create(const aValue: string);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  TRight.ObjectCreate(Self, 'System.Text.StringBuilder', 1948756573, xParams)
end;

constructor StringBuilder.Create(const aValue: string;
const aCapacity: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aCapacity);
  TRight.ObjectCreate(Self, 'System.Text.StringBuilder', -1308550657, xParams)
end;

constructor StringBuilder.Create(const aValue: string;
const aStartIndex: Int32;
const aLength: Int32;
const aCapacity: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aStartIndex);
  xParams.Write(aLength);
  xParams.Write(aCapacity);
  TRight.ObjectCreate(Self, 'System.Text.StringBuilder', 2062809758, xParams)
end;

constructor StringBuilder.Create(const aCapacity: Int32;
const aMaxCapacity: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aCapacity);
  xParams.Write(aMaxCapacity);
  TRight.ObjectCreate(Self, 'System.Text.StringBuilder', 268563088, xParams)
end;

function StringBuilder.EnsureCapacity(const aCapacity: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aCapacity);
  with TRight.MethodCall(Self, '', 'EnsureCapacity', 1453052650, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function StringBuilder.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function StringBuilder.ToString(const aStartIndex: Int32;
const aLength: Int32): string;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aStartIndex);
  xParams.Write(aLength);
  with TRight.MethodCall(Self, '', 'ToString', 268563088, xParams) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function StringBuilder.Clear: StringBuilder;
begin
  with TRight.MethodCall(Self, '', 'Clear', 0) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Char;
const aRepeatCount: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aRepeatCount);
  with TRight.MethodCall(Self, '', 'Append', -1472593703, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: CharArray;
const aStartIndex: Int32;
const aCharCount: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aStartIndex);
  xParams.Write(aCharCount);
  with TRight.MethodCall(Self, '', 'Append', -30963335, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: string): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 1948756573, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: string;
const aStartIndex: Int32;
const aCount: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aStartIndex);
  xParams.Write(aCount);
  with TRight.MethodCall(Self, '', 'Append', -1580613170, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.AppendLine: StringBuilder;
begin
  with TRight.MethodCall(Self, '', 'AppendLine', 0) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.AppendLine(const aValue: string): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'AppendLine', 1948756573, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

procedure StringBuilder.CopyTo(const aSourceIndex: Int32;
const aDestination: CharArray;
const aDestinationIndex: Int32;
const aCount: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aSourceIndex);
  xParams.Write(aDestination);
  xParams.Write(aDestinationIndex);
  xParams.Write(aCount);
  with TRight.MethodCall(Self, '', 'CopyTo', -828271084, xParams) do try
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: string;
const aCount: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  xParams.Write(aCount);
  with TRight.MethodCall(Self, '', 'Insert', -662918148, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Remove(const aStartIndex: Int32;
const aLength: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aStartIndex);
  xParams.Write(aLength);
  with TRight.MethodCall(Self, '', 'Remove', 268563088, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Boolean): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', -1365559157, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Int8): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', -2103264999, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Byte): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 2136511998, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Char): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', -1242338887, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Int16): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 829670272, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 1453052650, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Int64): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 101365639, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Single): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', -1089339324, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Double): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', -337897544, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Extended): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', -2077988060, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: UInt16): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 1815116621, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: UInt32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 198732327, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: UInt64): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 1531514698, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: TCTObject): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', 1923550299, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: CharArray): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Append', -1061408579, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: string): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', -994989985, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Boolean): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 1076219813, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Int8): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', -1002923677, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Byte): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', -1933142447, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Int16): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 2011816954, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Char): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 1181575702, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: CharArray): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 1881813695, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: CharArray;
const aStartIndex: Int32;
const aCharCount: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  xParams.Write(aStartIndex);
  xParams.Write(aCharCount);
  with TRight.MethodCall(Self, '', 'Insert', -828271084, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 268563088, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Int64): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 1083217917, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Single): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 260309574, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Double): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 1531581882, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: Extended): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', 1788517386, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: UInt16): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', -593069745, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: UInt32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', -1152489435, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: UInt64): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', -337703608, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Insert(const aIndex: Int32;
const aValue: TCTObject): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aIndex);
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Insert', -1036972455, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.AppendFormat(const aFormat: string;
const aArg0: TCTObject): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aFormat);
  xParams.Write(aArg0);
  with TRight.MethodCall(Self, '', 'AppendFormat', 530477691, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.AppendFormat(const aFormat: string;
const aArg0: TCTObject;
const aArg1: TCTObject): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aFormat);
  xParams.Write(aArg0);
  xParams.Write(aArg1);
  with TRight.MethodCall(Self, '', 'AppendFormat', -1133577480, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.AppendFormat(const aFormat: string;
const aArg0: TCTObject;
const aArg1: TCTObject;
const aArg2: TCTObject): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aFormat);
  xParams.Write(aArg0);
  xParams.Write(aArg1);
  xParams.Write(aArg2);
  with TRight.MethodCall(Self, '', 'AppendFormat', -526812524, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Replace(const aOldValue: string;
const aNewValue: string): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aOldValue);
  xParams.Write(aNewValue);
  with TRight.MethodCall(Self, '', 'Replace', 421450877, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Equals(const aSb: StringBuilder): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aSb);
  with TRight.MethodCall(Self, '', 'Equals', 1674886000, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function StringBuilder.Replace(const aOldValue: string;
const aNewValue: string;
const aStartIndex: Int32;
const aCount: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aOldValue);
  xParams.Write(aNewValue);
  xParams.Write(aStartIndex);
  xParams.Write(aCount);
  with TRight.MethodCall(Self, '', 'Replace', 744926402, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Replace(const aOldChar: Char;
const aNewChar: Char): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aOldChar);
  xParams.Write(aNewChar);
  with TRight.MethodCall(Self, '', 'Replace', -1069929439, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Replace(const aOldChar: Char;
const aNewChar: Char;
const aStartIndex: Int32;
const aCount: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aOldChar);
  xParams.Write(aNewChar);
  xParams.Write(aStartIndex);
  xParams.Write(aCount);
  with TRight.MethodCall(Self, '', 'Replace', -670733906, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Append(const aValue: Unreferenced;
const aValueCount: Int32): StringBuilder;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(aValueCount);
  with TRight.MethodCall(Self, '', 'Append', -1246517308, xParams) do try
    Result := NET.mscorlib.StringBuilder(Results.ReadObject);
  finally Free; end;
end;

function StringBuilder.Equals(const aObj: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aObj);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function StringBuilder.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function StringBuilder.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.DateTime}

class function DateTime.CTFullTypeName: string;
begin
  Result := 'System.DateTime'
end;


function DateTime.DateRead: DateTime;
begin
  with TRight.GetPropValue(Self, '', 'Date') do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.DayRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Day') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.DayOfWeekRead: DayOfWeek;
begin
  with TRight.GetPropValue(Self, '', 'DayOfWeek') do try
    Result := NET.mscorlib.DayOfWeek(Results.ReadInt32);
  finally Free; end;
end;

function DateTime.DayOfYearRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'DayOfYear') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.HourRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Hour') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.KindRead: DateTimeKind;
begin
  with TRight.GetPropValue(Self, '', 'Kind') do try
    Result := NET.mscorlib.DateTimeKind(Results.ReadInt32);
  finally Free; end;
end;

function DateTime.MillisecondRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Millisecond') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.MinuteRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Minute') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.MonthRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Month') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

class function DateTime.NowRead: DateTime;
begin
  with TRight.GetPropValue(nil, CTFullTypeName, 'Now') do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.SecondRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Second') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.TicksRead: Int64;
begin
  with TRight.GetPropValue(Self, '', 'Ticks') do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function DateTime.TimeOfDayRead: Unreferenced;
begin
  with TRight.GetPropValue(Self, '', 'TimeOfDay') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

class function DateTime.TodayRead: DateTime;
begin
  with TRight.GetPropValue(nil, CTFullTypeName, 'Today') do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

class function DateTime.UtcNowRead: DateTime;
begin
  with TRight.GetPropValue(nil, CTFullTypeName, 'UtcNow') do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.YearRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'Year') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

class function DateTime.MinValueRead: DateTime;
begin
  with TRight.GetFieldValue(nil, CTFullTypeName, 'MinValue') do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

class procedure DateTime.MinValueWrite;
begin
  TRight.SetFieldValue(nil, CTFullTypeName, 'MinValue', aValue);
end;

class function DateTime.MaxValueRead: DateTime;
begin
  with TRight.GetFieldValue(nil, CTFullTypeName, 'MaxValue') do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

class procedure DateTime.MaxValueWrite;
begin
  TRight.SetFieldValue(nil, CTFullTypeName, 'MaxValue', aValue);
end;

constructor DateTime.Create(const aTicks: Int64);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aTicks);
  TRight.ObjectCreate(Self, 'System.DateTime', 101365639, xParams)
end;

constructor DateTime.Create(const aTicks: Int64;
const aKind: DateTimeKind);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aTicks);
  xParams.Write(Int32(aKind));
  TRight.ObjectCreate(Self, 'System.DateTime', 885493942, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  TRight.ObjectCreate(Self, 'System.DateTime', -577567871, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32;
const aCalendar: Unreferenced);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  xParams.Write(aCalendar);
  TRight.ObjectCreate(Self, 'System.DateTime', -2045802201, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32;
const aHour: Int32;
const aMinute: Int32;
const aSecond: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  xParams.Write(aHour);
  xParams.Write(aMinute);
  xParams.Write(aSecond);
  TRight.ObjectCreate(Self, 'System.DateTime', 1613891960, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32;
const aHour: Int32;
const aMinute: Int32;
const aSecond: Int32;
const aKind: DateTimeKind);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  xParams.Write(aHour);
  xParams.Write(aMinute);
  xParams.Write(aSecond);
  xParams.Write(Int32(aKind));
  TRight.ObjectCreate(Self, 'System.DateTime', -626636668, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32;
const aHour: Int32;
const aMinute: Int32;
const aSecond: Int32;
const aCalendar: Unreferenced);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  xParams.Write(aHour);
  xParams.Write(aMinute);
  xParams.Write(aSecond);
  xParams.Write(aCalendar);
  TRight.ObjectCreate(Self, 'System.DateTime', 1779578975, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32;
const aHour: Int32;
const aMinute: Int32;
const aSecond: Int32;
const aMillisecond: Int32);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  xParams.Write(aHour);
  xParams.Write(aMinute);
  xParams.Write(aSecond);
  xParams.Write(aMillisecond);
  TRight.ObjectCreate(Self, 'System.DateTime', -1374698435, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32;
const aHour: Int32;
const aMinute: Int32;
const aSecond: Int32;
const aMillisecond: Int32;
const aKind: DateTimeKind);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  xParams.Write(aHour);
  xParams.Write(aMinute);
  xParams.Write(aSecond);
  xParams.Write(aMillisecond);
  xParams.Write(Int32(aKind));
  TRight.ObjectCreate(Self, 'System.DateTime', 830966731, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32;
const aHour: Int32;
const aMinute: Int32;
const aSecond: Int32;
const aMillisecond: Int32;
const aCalendar: Unreferenced);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  xParams.Write(aHour);
  xParams.Write(aMinute);
  xParams.Write(aSecond);
  xParams.Write(aMillisecond);
  xParams.Write(aCalendar);
  TRight.ObjectCreate(Self, 'System.DateTime', -35481689, xParams)
end;

constructor DateTime.Create(const aYear: Int32;
const aMonth: Int32;
const aDay: Int32;
const aHour: Int32;
const aMinute: Int32;
const aSecond: Int32;
const aMillisecond: Int32;
const aCalendar: Unreferenced;
const aKind: DateTimeKind);
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  xParams.Write(aDay);
  xParams.Write(aHour);
  xParams.Write(aMinute);
  xParams.Write(aSecond);
  xParams.Write(aMillisecond);
  xParams.Write(aCalendar);
  xParams.Write(Int32(aKind));
  TRight.ObjectCreate(Self, 'System.DateTime', -355322569, xParams)
end;

function DateTime.AddNET(const aValue: Unreferenced): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Add', -727701629, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.AddDays(const aValue: Double): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'AddDays', -337897544, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.AddHours(const aValue: Double): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'AddHours', -337897544, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.AddMilliseconds(const aValue: Double): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'AddMilliseconds', -337897544, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.AddMinutes(const aValue: Double): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'AddMinutes', -337897544, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.AddMonths(const aMonths: Int32): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aMonths);
  with TRight.MethodCall(Self, '', 'AddMonths', 1453052650, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.AddSeconds(const aValue: Double): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'AddSeconds', -337897544, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.AddTicks(const aValue: Int64): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'AddTicks', 101365639, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.AddYears(const aValue: Int32): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'AddYears', 1453052650, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

class function DateTime.Compare(const aT1: DateTime;
const aT2: DateTime): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aT1);
  xParams.Write(aT2);
  with TRight.MethodCall(nil, CTFullTypeName, 'Compare', -840403309, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.CompareTo(const aValue: TCTObject): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'CompareTo', 1923550299, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.CompareTo(const aValue: DateTime): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'CompareTo', 740049904, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

class function DateTime.DaysInMonth(const aYear: Int32;
const aMonth: Int32): Int32;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  xParams.Write(aMonth);
  with TRight.MethodCall(nil, CTFullTypeName, 'DaysInMonth', 268563088, xParams) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function DateTime.Equals(const aValue: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function DateTime.Equals(const aValue: DateTime): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Equals', 740049904, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

class function DateTime.Equals(const aT1: DateTime;
const aT2: DateTime): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aT1);
  xParams.Write(aT2);
  with TRight.MethodCall(nil, CTFullTypeName, 'Equals', -840403309, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

class function DateTime.FromBinary(const aDateData: Int64): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aDateData);
  with TRight.MethodCall(nil, CTFullTypeName, 'FromBinary', 101365639, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

class function DateTime.FromFileTime(const aFileTime: Int64): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aFileTime);
  with TRight.MethodCall(nil, CTFullTypeName, 'FromFileTime', 101365639, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

class function DateTime.FromFileTimeUtc(const aFileTime: Int64): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aFileTime);
  with TRight.MethodCall(nil, CTFullTypeName, 'FromFileTimeUtc', 101365639, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

class function DateTime.FromOADate(const aD: Double): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aD);
  with TRight.MethodCall(nil, CTFullTypeName, 'FromOADate', -337897544, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.IsDaylightSavingTime: Boolean;
begin
  with TRight.MethodCall(Self, '', 'IsDaylightSavingTime', 0) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

class function DateTime.SpecifyKind(const aValue: DateTime;
const aKind: DateTimeKind): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  xParams.Write(Int32(aKind));
  with TRight.MethodCall(nil, CTFullTypeName, 'SpecifyKind', -1426611568, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.ToBinary: Int64;
begin
  with TRight.MethodCall(Self, '', 'ToBinary', 0) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function DateTime.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

class function DateTime.IsLeapYear(const aYear: Int32): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aYear);
  with TRight.MethodCall(nil, CTFullTypeName, 'IsLeapYear', 1453052650, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

class function DateTime.Parse(const s: string): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(s);
  with TRight.MethodCall(nil, CTFullTypeName, 'Parse', 1948756573, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.Subtract(const aValue: DateTime): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Subtract', 740049904, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function DateTime.Subtract(const aValue: Unreferenced): DateTime;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'Subtract', -727701629, xParams) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.ToOADate: Double;
begin
  with TRight.MethodCall(Self, '', 'ToOADate', 0) do try
    Result := Results.ReadDouble;
  finally Free; end;
end;

function DateTime.ToFileTime: Int64;
begin
  with TRight.MethodCall(Self, '', 'ToFileTime', 0) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function DateTime.ToFileTimeUtc: Int64;
begin
  with TRight.MethodCall(Self, '', 'ToFileTimeUtc', 0) do try
    Result := Results.ReadInt64;
  finally Free; end;
end;

function DateTime.ToLocalTime: DateTime;
begin
  with TRight.MethodCall(Self, '', 'ToLocalTime', 0) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.ToLongDateString: string;
begin
  with TRight.MethodCall(Self, '', 'ToLongDateString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function DateTime.ToLongTimeString: string;
begin
  with TRight.MethodCall(Self, '', 'ToLongTimeString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function DateTime.ToShortDateString: string;
begin
  with TRight.MethodCall(Self, '', 'ToShortDateString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function DateTime.ToShortTimeString: string;
begin
  with TRight.MethodCall(Self, '', 'ToShortTimeString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function DateTime.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function DateTime.ToString(const aFormat: string): string;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aFormat);
  with TRight.MethodCall(Self, '', 'ToString', 1948756573, xParams) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function DateTime.ToUniversalTime: DateTime;
begin
  with TRight.MethodCall(Self, '', 'ToUniversalTime', 0) do try
    Result := NET.mscorlib.DateTime(Results.ReadObject);
  finally Free; end;
end;

function DateTime.GetDateTimeFormats: StringArray;
begin
  with TRight.MethodCall(Self, '', 'GetDateTimeFormats', 0) do try
    Result := NET.mscorlib.StringArray(Results.ReadObject);
  finally Free; end;
end;

function DateTime.GetDateTimeFormats(const aFormat: Char): StringArray;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aFormat);
  with TRight.MethodCall(Self, '', 'GetDateTimeFormats', -1242338887, xParams) do try
    Result := NET.mscorlib.StringArray(Results.ReadObject);
  finally Free; end;
end;

function DateTime.GetTypeCode: TypeCode;
begin
  with TRight.MethodCall(Self, '', 'GetTypeCode', 0) do try
    Result := NET.mscorlib.TypeCode(Results.ReadInt32);
  finally Free; end;
end;

function DateTime.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

{System.Type}

class function TypeNET.CTFullTypeName: string;
begin
  Result := 'System.Type'
end;


function TypeNET.AssemblyRead: Unreferenced;
begin
  with TRight.GetPropValue(Self, '', 'Assembly') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.AssemblyQualifiedNameRead: string;
begin
  with TRight.GetPropValue(Self, '', 'AssemblyQualifiedName') do try
    Result := Results.ReadString;
  finally Free; end;
end;

function TypeNET.AttributesRead: TypeAttributes;
begin
  with TRight.GetPropValue(Self, '', 'Attributes') do try
    Result := NET.mscorlib.TypeAttributes(Results.ReadInt32);
  finally Free; end;
end;

function TypeNET.BaseTypeRead: TypeNET;
begin
  with TRight.GetPropValue(Self, '', 'BaseType') do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.ContainsGenericParametersRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'ContainsGenericParameters') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.DeclaringMethodRead: Unreferenced;
begin
  with TRight.GetPropValue(Self, '', 'DeclaringMethod') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.DeclaringTypeRead: TypeNET;
begin
  with TRight.GetPropValue(Self, '', 'DeclaringType') do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.DefaultBinderRead: Unreferenced;
begin
  with TRight.GetPropValue(nil, CTFullTypeName, 'DefaultBinder') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.FullNameRead: string;
begin
  with TRight.GetPropValue(Self, '', 'FullName') do try
    Result := Results.ReadString;
  finally Free; end;
end;

function TypeNET.GenericParameterAttributesRead: GenericParameterAttributes;
begin
  with TRight.GetPropValue(Self, '', 'GenericParameterAttributes') do try
    Result := NET.mscorlib.GenericParameterAttributes(Results.ReadInt32);
  finally Free; end;
end;

function TypeNET.GenericParameterPositionRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'GenericParameterPosition') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function TypeNET.GUIDRead: Unreferenced;
begin
  with TRight.GetPropValue(Self, '', 'GUID') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.HasElementTypeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'HasElementType') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsAbstractRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsAbstract') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsAnsiClassRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsAnsiClass') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsArrayRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsArray') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsAutoClassRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsAutoClass') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsAutoLayoutRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsAutoLayout') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsByRefRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsByRef') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsClassRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsClass') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsCOMObjectRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsCOMObject') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsConstructedGenericTypeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsConstructedGenericType') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsContextfulRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsContextful') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsEnumRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsEnum') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsExplicitLayoutRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsExplicitLayout') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsGenericParameterRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsGenericParameter') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsGenericTypeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsGenericType') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsGenericTypeDefinitionRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsGenericTypeDefinition') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsImportRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsImport') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsInterfaceRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsInterface') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsLayoutSequentialRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsLayoutSequential') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsMarshalByRefRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsMarshalByRef') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsNestedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsNested') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsNestedAssemblyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsNestedAssembly') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsNestedFamANDAssemRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsNestedFamANDAssem') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsNestedFamilyRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsNestedFamily') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsNestedFamORAssemRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsNestedFamORAssem') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsNestedPrivateRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsNestedPrivate') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsNestedPublicRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsNestedPublic') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsNotPublicRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsNotPublic') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsPointerRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsPointer') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsPrimitiveRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsPrimitive') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsPublicRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsPublic') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsSealedRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSealed') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsSecurityCriticalRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSecurityCritical') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsSecuritySafeCriticalRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSecuritySafeCritical') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsSecurityTransparentRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSecurityTransparent') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsSerializableRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSerializable') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsSpecialNameRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsSpecialName') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsUnicodeClassRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsUnicodeClass') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsValueTypeRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsValueType') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsVisibleRead: Boolean;
begin
  with TRight.GetPropValue(Self, '', 'IsVisible') do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.MemberTypeRead: MemberTypes;
begin
  with TRight.GetPropValue(Self, '', 'MemberType') do try
    Result := NET.mscorlib.MemberTypes(Results.ReadInt32);
  finally Free; end;
end;

function TypeNET.MetadataTokenRead: Int32;
begin
  with TRight.GetPropValue(Self, '', 'MetadataToken') do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function TypeNET.ModuleRead: Unreferenced;
begin
  with TRight.GetPropValue(Self, '', 'Module') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.NameRead: string;
begin
  with TRight.GetPropValue(Self, '', 'Name') do try
    Result := Results.ReadString;
  finally Free; end;
end;

function TypeNET.NamespaceRead: string;
begin
  with TRight.GetPropValue(Self, '', 'Namespace') do try
    Result := Results.ReadString;
  finally Free; end;
end;

function TypeNET.ReflectedTypeRead: TypeNET;
begin
  with TRight.GetPropValue(Self, '', 'ReflectedType') do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.StructLayoutAttributeRead: Unreferenced;
begin
  with TRight.GetPropValue(Self, '', 'StructLayoutAttribute') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.TypeHandleRead: Unreferenced;
begin
  with TRight.GetPropValue(Self, '', 'TypeHandle') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.TypeInitializerRead: Unreferenced;
begin
  with TRight.GetPropValue(Self, '', 'TypeInitializer') do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.UnderlyingSystemTypeRead: TypeNET;
begin
  with TRight.GetPropValue(Self, '', 'UnderlyingSystemType') do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.MissingRead: TCTObject;
begin
  with TRight.GetFieldValue(nil, CTFullTypeName, 'Missing') do try
    Result := TCTObject(Results.ReadObject);
  finally Free; end;
end;

class procedure TypeNET.MissingWrite;
begin
  TRight.SetFieldValue(nil, CTFullTypeName, 'Missing', aValue);
end;

class function TypeNET.DelimiterRead: Char;
begin
  with TRight.GetFieldValue(nil, CTFullTypeName, 'Delimiter') do try
    Result := Results.ReadChar;
  finally Free; end;
end;

class procedure TypeNET.DelimiterWrite;
begin
  TRight.SetFieldValue(nil, CTFullTypeName, 'Delimiter', TBoxChar.Create(aValue));
end;

class function TypeNET.GetType(const aTypeName: string;
const aThrowOnError: Boolean;
const aIgnoreCase: Boolean): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aTypeName);
  xParams.Write(aThrowOnError);
  xParams.Write(aIgnoreCase);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetType', 826961985, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetType(const aTypeName: string;
const aThrowOnError: Boolean): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aTypeName);
  xParams.Write(aThrowOnError);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetType', -1785192131, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetType(const aTypeName: string): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aTypeName);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetType', 1948756573, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.ReflectionOnlyGetType(const aTypeName: string;
const aThrowIfNotFound: Boolean;
const aIgnoreCase: Boolean): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aTypeName);
  xParams.Write(aThrowIfNotFound);
  xParams.Write(aIgnoreCase);
  with TRight.MethodCall(nil, CTFullTypeName, 'ReflectionOnlyGetType', 826961985, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.MakePointerType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'MakePointerType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.MakeByRefType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'MakeByRefType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.MakeArrayType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'MakeArrayType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.MakeArrayType(const aRank: Int32): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aRank);
  with TRight.MethodCall(Self, '', 'MakeArrayType', 1453052650, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromProgID(const aProgID: string): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aProgID);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromProgID', 1948756573, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromProgID(const aProgID: string;
const aThrowOnError: Boolean): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aProgID);
  xParams.Write(aThrowOnError);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromProgID', -1785192131, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromProgID(const aProgID: string;
const aServer: string): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aProgID);
  xParams.Write(aServer);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromProgID', 421450877, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromProgID(const aProgID: string;
const aServer: string;
const aThrowOnError: Boolean): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aProgID);
  xParams.Write(aServer);
  xParams.Write(aThrowOnError);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromProgID', -1838281340, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromCLSID(const aClsid: Unreferenced): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aClsid);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromCLSID', -259283884, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromCLSID(const aClsid: Unreferenced;
const aThrowOnError: Boolean): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aClsid);
  xParams.Write(aThrowOnError);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromCLSID', -263158132, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromCLSID(const aClsid: Unreferenced;
const aServer: string): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aClsid);
  xParams.Write(aServer);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromCLSID', 1633723173, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromCLSID(const aClsid: Unreferenced;
const aServer: string;
const aThrowOnError: Boolean): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aClsid);
  xParams.Write(aServer);
  xParams.Write(aThrowOnError);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromCLSID', -974598931, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeCode(const aType: TypeNET): TypeCode;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aType);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeCode', -1745789184, xParams) do try
    Result := NET.mscorlib.TypeCode(Results.ReadInt32);
  finally Free; end;
end;

class function TypeNET.GetTypeHandle(const aO: TCTObject): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aO);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeHandle', 1923550299, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

class function TypeNET.GetTypeFromHandle(const aHandle: Unreferenced): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aHandle);
  with TRight.MethodCall(nil, CTFullTypeName, 'GetTypeFromHandle', 997189768, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetArrayRank: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetArrayRank', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function TypeNET.GetMethod(const aName: string;
const aBindingAttr: BindingFlags): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  xParams.Write(Int32(aBindingAttr));
  with TRight.MethodCall(Self, '', 'GetMethod', -1006787733, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetMethod(const aName: string): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  with TRight.MethodCall(Self, '', 'GetMethod', 1948756573, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetField(const aName: string;
const aBindingAttr: BindingFlags): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  xParams.Write(Int32(aBindingAttr));
  with TRight.MethodCall(Self, '', 'GetField', -1006787733, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetField(const aName: string): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  with TRight.MethodCall(Self, '', 'GetField', 1948756573, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetInterface(const aName: string): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  with TRight.MethodCall(Self, '', 'GetInterface', 1948756573, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetInterface(const aName: string;
const aIgnoreCase: Boolean): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  xParams.Write(aIgnoreCase);
  with TRight.MethodCall(Self, '', 'GetInterface', -1785192131, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetEvent(const aName: string): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  with TRight.MethodCall(Self, '', 'GetEvent', 1948756573, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetEvent(const aName: string;
const aBindingAttr: BindingFlags): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  xParams.Write(Int32(aBindingAttr));
  with TRight.MethodCall(Self, '', 'GetEvent', -1006787733, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetProperty(const aName: string;
const aBindingAttr: BindingFlags): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  xParams.Write(Int32(aBindingAttr));
  with TRight.MethodCall(Self, '', 'GetProperty', -1006787733, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetProperty(const aName: string;
const aReturnType: TypeNET): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  xParams.Write(aReturnType);
  with TRight.MethodCall(Self, '', 'GetProperty', 66404748, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetProperty(const aName: string): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  with TRight.MethodCall(Self, '', 'GetProperty', 1948756573, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetNestedType(const aName: string): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  with TRight.MethodCall(Self, '', 'GetNestedType', 1948756573, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetNestedType(const aName: string;
const aBindingAttr: BindingFlags): TypeNET;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aName);
  xParams.Write(Int32(aBindingAttr));
  with TRight.MethodCall(Self, '', 'GetNestedType', -1006787733, xParams) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetElementType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetElementType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetGenericTypeDefinition: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetGenericTypeDefinition', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetEnumNames: StringArray;
begin
  with TRight.MethodCall(Self, '', 'GetEnumNames', 0) do try
    Result := NET.mscorlib.StringArray(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetEnumValues: TCTArray;
begin
  with TRight.MethodCall(Self, '', 'GetEnumValues', 0) do try
    Result := TCTArray(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetEnumUnderlyingType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetEnumUnderlyingType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.IsEnumDefined(const aValue: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'IsEnumDefined', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.GetEnumName(const aValue: TCTObject): string;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aValue);
  with TRight.MethodCall(Self, '', 'GetEnumName', 1923550299, xParams) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function TypeNET.IsSubclassOf(const aC: TypeNET): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aC);
  with TRight.MethodCall(Self, '', 'IsSubclassOf', -1745789184, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsInstanceOfType(const aO: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aO);
  with TRight.MethodCall(Self, '', 'IsInstanceOfType', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsAssignableFrom(const aC: TypeNET): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aC);
  with TRight.MethodCall(Self, '', 'IsAssignableFrom', -1745789184, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.IsEquivalentTo(const aOther: TypeNET): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aOther);
  with TRight.MethodCall(Self, '', 'IsEquivalentTo', -1745789184, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.ToString: string;
begin
  with TRight.MethodCall(Self, '', 'ToString', 0) do try
    Result := Results.ReadString;
  finally Free; end;
end;

function TypeNET.Equals(const aO: TCTObject): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aO);
  with TRight.MethodCall(Self, '', 'Equals', 1923550299, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.Equals(const aO: TypeNET): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aO);
  with TRight.MethodCall(Self, '', 'Equals', -1745789184, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.GetHashCode: Int32;
begin
  with TRight.MethodCall(Self, '', 'GetHashCode', 0) do try
    Result := Results.ReadInt32;
  finally Free; end;
end;

function TypeNET.GetInterfaceMap(const aInterfaceType: TypeNET): Unreferenced;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aInterfaceType);
  with TRight.MethodCall(Self, '', 'GetInterfaceMap', -1745789184, xParams) do try
    Result := Unreferenced(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.GetType: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

function TypeNET.IsDefined(const aAttributeType: TypeNET;
const aInherit: Boolean): Boolean;
var
  xParams: TCTStreamWriter;
begin
  xParams := TCTStreamWriter.Create;
  xParams.Write(aAttributeType);
  xParams.Write(aInherit);
  with TRight.MethodCall(Self, '', 'IsDefined', -957443991, xParams) do try
    Result := Results.ReadBoolean;
  finally Free; end;
end;

function TypeNET.GetType1: TypeNET;
begin
  with TRight.MethodCall(Self, '', 'GetType', 0) do try
    Result := NET.mscorlib.TypeNET(Results.ReadObject);
  finally Free; end;
end;

initialization
  TRight.CheckVersion('NET.mscorlib', '2.0.20');
end.
