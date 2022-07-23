contract main {




// =====================  Runtime code  =====================


#
#  - sub_5bdee171(?)
#
const DECIMAL_PRECISION = 10^18


address owner;
array of uint256 stor1;
array of uint256 stor3;
address stor100;
address stor101;
address stor150;
address stor151;
address stor152;
address stor153;
address stor154;
address sub_8f871a6cAddress;
address stor156;
address stor157;
address sub_992669a6Address;
address sub_862c1642Address;
uint256 sub_b14cebac;
uint256 sub_d93f6b36;
uint8 sub_51ca540e;
uint8 sub_cec0ce0f; offset 8
uint8 sub_efa98547; offset 16
uint256 stor162; offset 16
uint256 stor162; offset 8
uint256 sub_a63857d5;
uint256 sub_da57ea9d;
array of struct sub_7fab0f02;
array of struct sub_0091e642;
address sub_defe1303Address;
address sub_00eef1ccAddress;
mapping of struct collateralParams;
array of struct validCollateral;
uint8 stor171;
array of address stor38469988439290360442040161431778322184861801977667677358241658634051776980762;

function sub_0091e642(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0091e642.length
    return sub_0091e642[arg1].field_0
}

function sub_00eef1cc(?) payable {
    return sub_00eef1ccAddress
}

function sub_09727e4c(?) payable {
    return sub_862c1642Address
}

function validCollateral(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < validCollateral.length
    return address(validCollateral[arg1].field_0)
}

function sub_2d2d7eba(?) payable {
    return sub_b14cebac
}

function sub_495ee13e(?) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(collateralParams[address(arg1)].field_1704))
}

function sub_51ca540e(?) payable {
    return bool(sub_51ca540e)
}

function sub_52704a7a(?) payable {
    return sub_d93f6b36
}

function sub_7fab0f02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7fab0f02.length
    return address(sub_7fab0f02[arg1].field_0)
}

function collateralParams(address arg1) payable {
    require calldata.size - 4 >= 32
    return collateralParams[arg1].field_0, 
           collateralParams[arg1].field_256,
           address(collateralParams[arg1].field_512),
           collateralParams[arg1].field_768,
           address(collateralParams[arg1].field_1024),
           collateralParams[arg1].field_1280,
           address(collateralParams[arg1].field_1536),
           bool(uint8(collateralParams[arg1].field_1696)),
           bool(uint8(collateralParams[arg1].field_1704))
}

function sub_80e65f19(?) payable {
    return sub_992669a6Address
}

function sub_862c1642(?) payable {
    return sub_862c1642Address
}

function owner() payable {
    return owner
}

function sub_8f871a6c(?) payable {
    return sub_8f871a6cAddress
}

function sub_992669a6(?) payable {
    return sub_992669a6Address
}

function sub_a1de92a1(?) payable {
    return sub_a63857d5
}

function sub_a63857d5(?) payable {
    return sub_a63857d5
}

function sub_b14cebac(?) payable {
    return sub_b14cebac
}

function sub_b664979d(?) payable {
    return bool(sub_cec0ce0f)
}

function sub_cec0ce0f(?) payable {
    return bool(sub_cec0ce0f)
}

function sub_d93f6b36(?) payable {
    return sub_d93f6b36
}

function getSafetyRatio(address arg1) payable {
    require calldata.size - 4 >= 32
    return collateralParams[address(arg1)].field_0
}

function sub_da57ea9d(?) payable {
    return sub_da57ea9d
}

function sub_defe1303(?) payable {
    return sub_defe1303Address
}

function sub_efa98547(?) payable {
    return bool(sub_efa98547)
}

function _fallback() payable {
    revert
}

function sub_3b798fb2(?) payable {
    return sub_b14cebac, sub_862c1642Address, sub_992669a6Address
}

function sub_908e5dd2(?) payable {
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    sub_51ca540e = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ca347fff(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    Mask(240, 0, stor162.field_16) = Mask(240, 0, arg1)
    emit 0x2477605a: arg1
}

function getEntireSystemColl() payable {
    require ext_code.size(stor100)
    staticcall stor100.0x651340c4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_459dd8bd(?) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    return collateralParams[address(arg1)].field_256
}

function getIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    return collateralParams[address(arg1)].field_1280
}

function sub_3b667865(?) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    return address(collateralParams[address(arg1)].field_1536)
}

function sub_a1ee0e73(?) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    return address(collateralParams[address(arg1)].field_1024)
}

function getDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    return collateralParams[address(arg1)].field_768
}

function sub_15d2c23a(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    sub_a63857d5 = arg1
    emit 0x16a4fd10: arg1
}

function getOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    return address(collateralParams[address(arg1)].field_512)
}

function getIsActive(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    return bool(uint8(collateralParams[address(arg1)].field_1696))
}

function sub_17a2c26b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    require ext_code.size(stor152)
    call stor152.0xb22b7840 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1fa5c8b8: arg1
}

function sub_a10c5606(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    require ext_code.size(stor157)
    call stor157.0xa10c5606 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1673aff4: arg1
}

function sub_506361ba(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if not arg1:
        revert with 0, 'Address nonzero'
    sub_992669a6Address = arg1
    emit 0xd8e88fa4: arg1
}

function sub_b3e52448(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if not arg1:
        revert with 0, 'Address nonzero'
    sub_862c1642Address = arg1
    emit 0xf190d93f: arg1
}

function sub_6c7bdebe(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if arg1 > 10^18:
        revert with 0, 'invalid new split/ratio'
    sub_b14cebac = arg1
    emit 0x238b69e1: arg1
}

function sub_83b57bd9(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if arg1 > 10^18:
        revert with 0, 'invalid new split/ratio'
    sub_d93f6b36 = arg1
    emit 0xe8feaa44: arg1
}

function sub_7fcc9bcf(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_00eef1ccAddress != msg.sender:
            revert with 0, 'Caller Not Two Week Timelock'
    if arg1 <= validCollateral.length:
        revert with 0, 'invalid newMax'
    sub_da57ea9d = arg1
    emit 0x6d75233e: arg1
}

function sub_b7002b7e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    require ext_code.size(stor154)
    call stor154.0x4b879069 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x74d4d4a8: address(arg1), 0
}

function changeClaimAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if not arg1:
        revert with 0, 'Address nonzero'
    sub_8f871a6cAddress = arg1
    emit 0xa333cf36: arg1
}

function sub_2310a6ab(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    require stor156 != arg1
    require ext_code.size(stor152)
    call stor152.0xe4d21561 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x131deae1: address(arg1), 0
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(collateralParams[address(arg1)].field_512))
    staticcall address(collateralParams[address(arg1)].field_512).fetchPrice_v() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_de680977(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if not sub_51ca540e:
            if owner != msg.sender:
                revert with 0, 'Caller Not Owner'
        else:
            if sub_defe1303Address != msg.sender:
                revert with 0, 'Caller Not Three Day Timelock'
    Mask(248, 0, stor162.field_8) = Mask(248, 0, arg1)
    emit 0x433099da: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_078e1d48(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    require ext_code.size(stor153)
    call stor153.0x78e1d48 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfaec01c6: arg1
}

function sub_b0f0b726(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    require ext_code.size(stor153)
    call stor153.0xb0f0b726 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xcf0d9736: arg1
}

function sub_49ca23b4(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_00eef1ccAddress != msg.sender:
            revert with 0, 'Caller Not Two Week Timelock'
    require ext_code.size(stor154)
    call stor154.0x4b879069 with:
         gas gas_remaining wei
        args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x74d4d4a8: address(arg1), 1
}

function sub_c3b7f9fb(?) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    if not uint8(collateralParams[address(arg1)].field_1696):
        revert with 0, 'collateral already deprecated'
    uint8(collateralParams[address(arg1)].field_1696) = 0
    emit 0x97cc48cf: arg1
}

function sub_31c74b99(?) payable {
    require calldata.size - 4 >= 32
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_00eef1ccAddress != msg.sender:
            revert with 0, 'Caller Not Two Week Timelock'
    if not arg1:
        revert with 0, 'Address nonzero'
    require ext_code.size(stor152)
    call stor152.0xe66ff880 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x131deae1: address(arg1), 1
}

function getEntireSystemDebt() payable {
    require ext_code.size(stor100)
    staticcall stor100.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor101)
    staticcall stor101.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    return (2 * ext_call.return_data[0])
}

function sub_69ff8ea7(?) payable {
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    idx = 0
    while idx < validCollateral.length:
        mem[0] = address(validCollateral[idx].field_0)
        mem[32] = 169
        if uint8(collateralParams[address(stor170[idx].field_0)].field_1696):
            mem[0] = address(validCollateral[idx].field_0)
            mem[32] = 169
            uint8(collateralParams[address(stor170[idx].field_0)].field_1696) = 0
            mem[96] = address(validCollateral[idx].field_0)
            emit 0x97cc48cf: address(validCollateral[idx].field_0)
        idx = idx + 1
        continue 
}

function sub_bdd6c8b9(?) payable {
    require calldata.size - 4 >= 32
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if uint8(collateralParams[address(arg1)].field_1696):
        revert with 0, 'collateral is already active'
    uint8(collateralParams[address(arg1)].field_1696) = 1
    emit 0x75d76411: arg1
}

function sub_efda2a3a(?) payable {
    require calldata.size - 4 >= 64
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if not arg2:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg2):
        revert with 0, 'Account code size cannot be zero'
    address(collateralParams[address(arg1)].field_1536) = arg2
    emit 0xcf98fac3: address(arg1), arg2
}

function changeOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if not arg2:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg2):
        revert with 0, 'Account code size cannot be zero'
    address(collateralParams[address(arg1)].field_512) = arg2
    emit OracleChanged(address(arg1), arg2);
}

function sub_08cad71f(?) payable {
    require calldata.size - 4 >= 448
    if stor171:
        revert with 0, 'Addresses already set'
    stor171 = 1
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor100 = arg1
    stor101 = arg2
    stor150 = arg3
    stor151 = arg4
    stor152 = arg6
    sub_992669a6Address = arg7
    stor156 = arg5
    if not arg8:
        revert with 0, 'Address nonzero'
    sub_862c1642Address = arg8
    stor153 = arg9
    stor154 = arg10
    stor157 = arg11
    if not arg12:
        revert with 0, 'Address nonzero'
    sub_8f871a6cAddress = arg12
    sub_defe1303Address = arg13
    sub_00eef1ccAddress = arg14
    emit 0xa333cf36: arg12
    emit 0xf190d93f: arg8
    sub_efa98547 = 1
    sub_b14cebac = 10^18
    sub_d93f6b36 = 2 * 10^17
    sub_a63857d5 = 10
    sub_da57ea9d = 50
}

function sub_0a561bea(?) payable {
    require calldata.size - 4 >= 160
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    require ext_code.size(address(collateralParams[address(arg1)].field_1024))
    staticcall address(collateralParams[address(arg1)].field_1024).getFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args 0, arg2, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_efa98547:
        return ext_call.return_data[0]
    if ext_call.return_data[0] < 10^16:
        return ext_call.return_data[0]
    return 10^16
}

function sub_cacabd27(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(collateralParams[address(arg1)].field_512))
    staticcall address(collateralParams[address(arg1)].field_512).fetchPrice_v() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 10^collateralParams[address(arg1)].field_768:
            revert with 0, ''
        return (0 / 10^collateralParams[address(arg1)].field_768)
    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
        revert with 0, 'mul overflow'
    if not 10^collateralParams[address(arg1)].field_768:
        revert with 0, ''
    return (arg2 * ext_call.return_data[0] / 10^collateralParams[address(arg1)].field_768)
}

function getValidCollateral() payable {
    if not validCollateral.length:
        mem[(32 * validCollateral.length) + 128] = 32
        mem[(32 * validCollateral.length) + 160] = validCollateral.length
        mem[(32 * validCollateral.length) + 192 len floor32(validCollateral.length)] = mem[128 len floor32(validCollateral.length)]
        return memory
          from (32 * validCollateral.length) + 128
           len (96 * validCollateral.length) + 64
    mem[128] = address(validCollateral.field_0)
    idx = 128
    s = 0
    while (32 * validCollateral.length) + 96 > idx:
        mem[idx + 32] = address(validCollateral[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * validCollateral.length) + 192 len floor32(validCollateral.length)] = mem[128 len floor32(validCollateral.length)]
    return Array(len=validCollateral.length, data=mem[128 len floor32(validCollateral.length)], mem[(32 * validCollateral.length) + floor32(validCollateral.length) + 192 len (32 * validCollateral.length) - floor32(validCollateral.length)]), 
}

function sub_3690f9e7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 169
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = bool(uint8(collateralParams[mem[(32 * idx) + 140 len 20]].field_1704))
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function sub_2e2b1a88(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(collateralParams[address(arg1)].field_512))
    staticcall address(collateralParams[address(arg1)].field_512).fetchPrice_v() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 10^(collateralParams[address(arg1)].field_768 + 18):
            revert with 0, ''
        return (0 / 10^(collateralParams[address(arg1)].field_768 + 18))
    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
        revert with 0, 'mul overflow'
    if not arg2 * ext_call.return_data[0]:
        if not 10^(collateralParams[address(arg1)].field_768 + 18):
            revert with 0, ''
        return (0 / 10^(collateralParams[address(arg1)].field_768 + 18))
    if collateralParams[address(arg1)].field_0 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != collateralParams[address(arg1)].field_0:
        revert with 0, 'mul overflow'
    if not 10^(collateralParams[address(arg1)].field_768 + 18):
        revert with 0, ''
    return (collateralParams[address(arg1)].field_0 * arg2 * ext_call.return_data[0] / 10^(collateralParams[address(arg1)].field_768 + 18))
}

function sub_9160f5f9(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(collateralParams[address(arg1)].field_512))
    staticcall address(collateralParams[address(arg1)].field_512).fetchPrice_v() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not 10^(collateralParams[address(arg1)].field_768 + 18):
            revert with 0, ''
        return (0 / 10^(collateralParams[address(arg1)].field_768 + 18))
    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
        revert with 0, 'mul overflow'
    if not arg2 * ext_call.return_data[0]:
        if not 10^(collateralParams[address(arg1)].field_768 + 18):
            revert with 0, ''
        return (0 / 10^(collateralParams[address(arg1)].field_768 + 18))
    if collateralParams[address(arg1)].field_256 * arg2 * ext_call.return_data[0] / arg2 * ext_call.return_data[0] != collateralParams[address(arg1)].field_256:
        revert with 0, 'mul overflow'
    if not 10^(collateralParams[address(arg1)].field_768 + 18):
        revert with 0, ''
    return (collateralParams[address(arg1)].field_256 * arg2 * ext_call.return_data[0] / 10^(collateralParams[address(arg1)].field_768 + 18))
}

function sub_2d79b8eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require 0 < validCollateral.length
        if address(validCollateral.field_0) != mem[(32 * idx) + 140 len 20]:
            if not collateralParams[mem[(32 * idx) + 140 len 20]].field_1280:
                revert with 0, 'collateral does not exist'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 169
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = collateralParams[mem[(32 * idx) + 140 len 20]].field_1280
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len floor32(arg1.length)] = mem[(32 * arg1.length) + 160 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + 160
       len (161 * arg1.length) + 64
}

function sub_1d4c200e(?) payable {
    if sub_7fab0f02.length:
        mem[128] = address(sub_7fab0f02.field_0)
        idx = 128
        s = 0
        while (32 * sub_7fab0f02.length) + 96 > idx:
            mem[idx + 32] = address(sub_7fab0f02[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if sub_0091e642.length:
        mem[(32 * sub_7fab0f02.length) + 160] = uint256(sub_0091e642.field_0)
        idx = (32 * sub_7fab0f02.length) + 160
        s = 0
        while (32 * sub_7fab0f02.length) + (32 * sub_0091e642.length) + 128 > idx:
            mem[idx + 32] = sub_0091e642[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_7fab0f02.length) + (32 * sub_0091e642.length) + 256 len floor32(sub_7fab0f02.length)] = mem[128 len floor32(sub_7fab0f02.length)]
    mem[(64 * sub_7fab0f02.length) + (32 * sub_0091e642.length) + 256] = sub_0091e642.length
    mem[(64 * sub_7fab0f02.length) + (32 * sub_0091e642.length) + 288 len floor32(sub_0091e642.length)] = mem[(32 * sub_7fab0f02.length) + 160 len floor32(sub_0091e642.length)]
    return Array(len=sub_7fab0f02.length, data=mem[128 len floor32(sub_7fab0f02.length)], mem[(32 * sub_7fab0f02.length) + (32 * sub_0091e642.length) + floor32(sub_7fab0f02.length) + 256 len (32 * sub_7fab0f02.length) + (32 * sub_0091e642.length) + -floor32(sub_7fab0f02.length) + 32]), 
           (32 * sub_7fab0f02.length) + 96
}

function sub_78847d68(?) payable {
    require calldata.size - 4 >= 64
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    if owner != msg.sender:
        revert with 0, '1Ownable: caller is not the owne'
    if not arg2:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg2):
        revert with 0, 'Account code size cannot be zero'
    staticcall arg2.initialized() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'fee curve not set'
    require ext_code.size(address(collateralParams[address(arg1)].field_1024))
    staticcall address(collateralParams[address(arg1)].field_1024).0xf2cfd551 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg2)
    call arg2.0x2c3609a0 with:
         gas gas_remaining wei
        args ext_call.return_data[0], ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(collateralParams[address(arg1)].field_1024) = arg2
    emit 0x48a911f5: address(arg1), arg2
}

function sub_e5054c96(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg1.length:
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < arg1.length
            require 0 < validCollateral.length
            if address(validCollateral.field_0) == mem[(32 * idx) + 140 len 20]:
                if s >= collateralParams[mem[(32 * idx) + 140 len 20]].field_1280:
                    if idx:
                        revert with 0, 'Collateral list not sorted'
            else:
                if not collateralParams[mem[(32 * idx) + 140 len 20]].field_1280:
                    revert with 0, 'collateral does not exist'
                if s >= collateralParams[address(mem[(32 * idx) + 128])].field_1280:
                    if idx:
                        revert with 0, 'Collateral list not sorted'
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 169
            if arg2:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 169
                if not uint8(collateralParams[address(mem[(32 * idx) + 128])].field_1696):
                    revert with 0, 'Collateral not active'
            idx = idx + 1
            s = collateralParams[address(mem[(32 * idx) + 128])].field_1280
            continue 
}

function sub_a58e5a56(?) payable {
    require calldata.size - 4 >= 96
    require 0 < validCollateral.length
    if address(validCollateral.field_0) != arg1:
        if not collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral does not exist'
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if arg2 >= 11 * 10^17:
        revert with 0, 'invalid new split/ratio'
    if arg3 >= 2 * 10^18:
        revert with 0, 'invalid new split/ratio'
    if arg2 < collateralParams[address(arg1)].field_0:
        revert with 0, 'invalid new split/ratio'
    if arg3 < arg2:
        revert with 0, 'invalid new split/ratio'
    collateralParams[address(arg1)].field_0 = arg2
    collateralParams[address(arg1)].field_256 = arg3
    require ext_code.size(stor100)
    staticcall stor100.0x896a0089 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor100)
    staticcall stor100.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor101)
    staticcall stor101.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    if uint255(ext_call.return_data[0]):
        if not ext_call.return_data[32]:
            if not 2 * ext_call.return_data[0]:
                revert with 0, ''
            if 0 / 2 * ext_call.return_data[0] < 15 * 10^17:
                if arg3 < collateralParams[address(arg1)].field_256:
                    revert with 0, 'invalid new split/ratio'
        else:
            if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
                revert with 0, 'mul overflow'
            if not 2 * ext_call.return_data[0]:
                revert with 0, ''
            if 10^18 * ext_call.return_data[32] / 2 * ext_call.return_data[0] < 15 * 10^17:
                if arg3 < collateralParams[address(arg1)].field_256:
                    revert with 0, 'invalid new split/ratio'
    emit 0xf6ae66b8: address(arg1), arg2
    emit 0xd19d8a7e: address(arg1), arg3
}

function sub_1ee2d29e(?) payable {
    require calldata.size - 4 >= 256
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
    if not arg1:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0, 'Account code size cannot be zero'
    if not arg4:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg4):
        revert with 0, 'Account code size cannot be zero'
    if not arg6:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg6):
        revert with 0, 'Account code size cannot be zero'
    if not arg8:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg8):
        revert with 0, 'Account code size cannot be zero'
    if arg2 >= 11 * 10^17:
        revert with 0, 'invalid new split/ratio'
    if arg3 < arg2:
        revert with 0, 'invalid new split/ratio'
    if validCollateral.length >= sub_da57ea9d:
        revert with 0, 'Already hit max system colls'
    if validCollateral.length:
        require 0 < validCollateral.length
        if address(validCollateral.field_0) == arg1:
            revert with 0, 'collateral already exists'
        if collateralParams[address(arg1)].field_1280:
            revert with 0, 'collateral already exists'
    validCollateral.length++
    stor550D[stor170.length] = arg1
    collateralParams[address(arg1)].field_0 = arg2
    collateralParams[address(arg1)].field_256 = arg3
    address(collateralParams[address(arg1)].field_512) = arg4
    collateralParams[address(arg1)].field_768 = arg5
    address(collateralParams[address(arg1)].field_1024) = arg6
    collateralParams[address(arg1)].field_1280 = validCollateral.length - 1
    address(collateralParams[address(arg1)].field_1536) = arg8
    uint8(collateralParams[address(arg1)].field_1696) = 1
    Mask(88, 0, collateralParams[address(arg1)].field_1704) = Mask(88, 0, arg7)
    Mask(80, 0, collateralParams[address(arg1)].field_1712) = 0
    require ext_code.size(stor100)
    call stor100.0xec0d5e0c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor101)
    call stor101.0xec0d5e0c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor150)
    call stor150.0xec0d5e0c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor151)
    call stor151.0xec0d5e0c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CollateralAdded(arg1);
    emit 0xf6ae66b8: address(arg1), arg2
    emit 0xd19d8a7e: address(arg1), arg3
}

function sub_3b1c2906(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        _51 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _52 = sha3(mem[(32 * idx) + 140 len 20], 169)
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 169
        require ext_code.size(address(collateralParams[address(mem[(32 * idx) + 128])].field_512))
        staticcall address(collateralParams[address(mem[(32 * idx) + 128])].field_512).fetchPrice_v() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _60 = mem[64]
            mem[64] = mem[64] + 64
            mem[_60] = 8
            mem[_60 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if 10^stor3[_52]:
                if (0 / 10^stor3[_52]) + s < s:
                    revert with 0, 'add overflow'
                idx = idx + 1
                s = (0 / 10^stor3[_52]) + s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
            idx = 32
            while idx < 8:
                mem[idx + mem[64] + 68] = mem[idx + _60 + 32]
                idx = idx + 32
                continue 
        else:
            if _51 * ext_call.return_data[0] / ext_call.return_data[0] != _51:
                revert with 0, 'mul overflow'
            _61 = mem[64]
            mem[64] = mem[64] + 64
            mem[_61] = 8
            mem[_61 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if 10^stor3[_52]:
                if (_51 * ext_call.return_data[0] / 10^stor3[_52]) + s < s:
                    revert with 0, 'add overflow'
                idx = idx + 1
                s = (_51 * ext_call.return_data[0] / 10^stor3[_52]) + s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
            idx = 32
            while idx < 8:
                mem[idx + mem[64] + 68] = mem[idx + _61 + 32]
                idx = idx + 32
                continue 
        revert with 0, ''
    return s
}

function sub_8ceb0985(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if not sub_51ca540e:
        if owner != msg.sender:
            revert with 0, 'Caller Not Owner'
        if arg2.length != arg1.length:
            revert with 0, 'invalid input length'
        if not arg2.length:
            revert with 0, 'invalid input length'
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            _46 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] + s < s:
                revert with 0, 'add overflow'
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 169
            if not uint8(collateralParams[mem[(32 * idx) + 140 len 20]].field_1696):
                revert with 0, 'Collateral not active'
            idx = idx + 1
            s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
            continue 
        if _46 * arg2.length != 10^18:
            revert with 0, 
                        32,
                        34,
                        0x736162736f727074696f6e5765696768747320646f65736e27742061646420746f20,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 262 len 30]
    else:
        if sub_defe1303Address != msg.sender:
            revert with 0, 'Caller Not Three Day Timelock'
        if arg2.length != arg1.length:
            revert with 0, 'invalid input length'
        if not arg2.length:
            revert with 0, 'invalid input length'
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            _50 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + 160] + s < s:
                revert with 0, 'add overflow'
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 169
            if not uint8(collateralParams[mem[(32 * idx) + 140 len 20]].field_1696):
                revert with 0, 'Collateral not active'
            idx = idx + 1
            s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
            continue 
        if _50 * arg2.length != 10^18:
            revert with 0, 
                        32,
                        34,
                        0x736162736f727074696f6e5765696768747320646f65736e27742061646420746f20,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 262 len 30]
    sub_7fab0f02.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_7fab0f02.length > idx:
            address(sub_7fab0f02[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(sub_7fab0f02[s].field_0) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_7fab0f02.length > idx:
            address(sub_7fab0f02[idx].field_0) = 0
            idx = idx + 1
            continue 
    sub_0091e642.length = arg2.length
    if not arg2.length:
        idx = 0
        while sub_0091e642.length > idx:
            sub_0091e642[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            sub_0091e642[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_0091e642.length > idx:
            sub_0091e642[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_97a4b9f7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        _67 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _68 = sha3(mem[(32 * idx) + 140 len 20], 169)
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 169
        require ext_code.size(address(collateralParams[address(mem[(32 * idx) + 128])].field_512))
        staticcall address(collateralParams[address(mem[(32 * idx) + 128])].field_512).fetchPrice_v() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = 8
            mem[_76 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if 10^(stor3[_68] + 18):
                if (0 / 10^(stor3[_68] + 18)) + s < s:
                    revert with 0, 'add overflow'
                idx = idx + 1
                s = (0 / 10^(stor3[_68] + 18)) + s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
            idx = 32
            while idx < 8:
                mem[idx + mem[64] + 68] = mem[idx + _76 + 32]
                idx = idx + 32
                continue 
        else:
            if _67 * ext_call.return_data[0] / ext_call.return_data[0] != _67:
                revert with 0, 'mul overflow'
            if not _67 * ext_call.return_data[0]:
                _79 = mem[64]
                mem[64] = mem[64] + 64
                mem[_79] = 8
                mem[_79 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^(stor3[_68] + 18):
                    if (0 / 10^(stor3[_68] + 18)) + s < s:
                        revert with 0, 'add overflow'
                    idx = idx + 1
                    s = (0 / 10^(stor3[_68] + 18)) + s
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _79 + 32]
                    idx = idx + 32
                    continue 
            else:
                if stor[_68] * _67 * ext_call.return_data[0] / _67 * ext_call.return_data[0] != stor[_68]:
                    revert with 0, 'mul overflow'
                _84 = mem[64]
                mem[64] = mem[64] + 64
                mem[_84] = 8
                mem[_84 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^(stor3[_68] + 18):
                    if (stor[_68] * _67 * ext_call.return_data[0] / 10^(stor3[_68] + 18)) + s < s:
                        revert with 0, 'add overflow'
                    idx = idx + 1
                    s = (stor[_68] * _67 * ext_call.return_data[0] / 10^(stor3[_68] + 18)) + s
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _84 + 32]
                    idx = idx + 32
                    continue 
        revert with 0, ''
    return s
}

function sub_617ddfff(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        _67 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _68 = sha3(mem[(32 * idx) + 140 len 20], 169)
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 169
        require ext_code.size(address(collateralParams[address(mem[(32 * idx) + 128])].field_512))
        staticcall address(collateralParams[address(mem[(32 * idx) + 128])].field_512).fetchPrice_v() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _76 = mem[64]
            mem[64] = mem[64] + 64
            mem[_76] = 8
            mem[_76 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if 10^(stor3[_68] + 18):
                if (0 / 10^(stor3[_68] + 18)) + s < s:
                    revert with 0, 'add overflow'
                idx = idx + 1
                s = (0 / 10^(stor3[_68] + 18)) + s
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
            idx = 32
            while idx < 8:
                mem[idx + mem[64] + 68] = mem[idx + _76 + 32]
                idx = idx + 32
                continue 
        else:
            if _67 * ext_call.return_data[0] / ext_call.return_data[0] != _67:
                revert with 0, 'mul overflow'
            if not _67 * ext_call.return_data[0]:
                _79 = mem[64]
                mem[64] = mem[64] + 64
                mem[_79] = 8
                mem[_79 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^(stor3[_68] + 18):
                    if (0 / 10^(stor3[_68] + 18)) + s < s:
                        revert with 0, 'add overflow'
                    idx = idx + 1
                    s = (0 / 10^(stor3[_68] + 18)) + s
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _79 + 32]
                    idx = idx + 32
                    continue 
            else:
                if stor1[_68] * _67 * ext_call.return_data[0] / _67 * ext_call.return_data[0] != stor1[_68]:
                    revert with 0, 'mul overflow'
                _84 = mem[64]
                mem[64] = mem[64] + 64
                mem[_84] = 8
                mem[_84 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^(stor3[_68] + 18):
                    if (stor1[_68] * _67 * ext_call.return_data[0] / 10^(stor3[_68] + 18)) + s < s:
                        revert with 0, 'add overflow'
                    idx = idx + 1
                    s = (stor1[_68] * _67 * ext_call.return_data[0] / 10^(stor3[_68] + 18)) + s
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _84 + 32]
                    idx = idx + 32
                    continue 
        revert with 0, ''
    return s
}

function sub_a0558523(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            _127 = mem[(32 * idx) + (32 * arg1.length) + 160]
            _132 = sha3(mem[(32 * idx) + 140 len 20], 169)
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 169
            require ext_code.size(address(collateralParams[address(mem[(32 * idx) + 128])].field_512))
            staticcall address(collateralParams[address(mem[(32 * idx) + 128])].field_512).fetchPrice_v() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_155] = 8
                mem[_155 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^(stor3[_132] + 18):
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10^(stor3[_132] + 18)
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _155 + 32]
                    idx = idx + 32
                    continue 
            else:
                if _127 * ext_call.return_data[0] / ext_call.return_data[0] != _127:
                    revert with 0, 'mul overflow'
                if not _127 * ext_call.return_data[0]:
                    _161 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_161] = 8
                    mem[_161 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^(stor3[_132] + 18):
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10^(stor3[_132] + 18)
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if stor[_132] * _127 * ext_call.return_data[0] / _127 * ext_call.return_data[0] != stor[_132]:
                        revert with 0, 'mul overflow'
                    _171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_171] = 8
                    mem[_171 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^(stor3[_132] + 18):
                        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = stor[_132] * _127 * ext_call.return_data[0] / 10^(stor3[_132] + 18)
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                        idx = idx + 32
                        continue 
            revert with 0, ''
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _131 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _131) + 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        _128 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _136 = sha3(mem[(32 * idx) + 140 len 20], 169)
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 169
        require ext_code.size(address(collateralParams[address(mem[(32 * idx) + 128])].field_512))
        staticcall address(collateralParams[address(mem[(32 * idx) + 128])].field_512).fetchPrice_v() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 8
            mem[_156 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if 10^(stor3[_136] + 18):
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10^(stor3[_136] + 18)
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 8
            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
            idx = 32
            while idx < 8:
                mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                idx = idx + 32
                continue 
        else:
            if _128 * ext_call.return_data[0] / ext_call.return_data[0] != _128:
                revert with 0, 'mul overflow'
            if not _128 * ext_call.return_data[0]:
                _165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_165] = 8
                mem[_165 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^(stor3[_136] + 18):
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10^(stor3[_136] + 18)
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _165 + 32]
                    idx = idx + 32
                    continue 
            else:
                if stor[_136] * _128 * ext_call.return_data[0] / _128 * ext_call.return_data[0] != stor[_136]:
                    revert with 0, 'mul overflow'
                _177 = mem[64]
                mem[64] = mem[64] + 64
                mem[_177] = 8
                mem[_177 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if 10^(stor3[_136] + 18):
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = stor[_136] * _128 * ext_call.return_data[0] / 10^(stor3[_136] + 18)
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _177 + 32]
                    idx = idx + 32
                    continue 
        revert with 0, ''
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    _135 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _135) + 32]
}

function sub_54c847dd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if not arg1.length:
        if arg2.length:
            if arg2.length:
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < arg2.length
                    require 0 < validCollateral.length
                    if address(validCollateral.field_0) == mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                        if s >= collateralParams[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_1280:
                            if idx:
                                revert with 0, 'Collateral list not sorted'
                    else:
                        if not collateralParams[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_1280:
                            revert with 0, 'collateral does not exist'
                        if s >= collateralParams[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_1280:
                            if idx:
                                revert with 0, 'Collateral list not sorted'
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    mem[32] = 169
                    idx = idx + 1
                    s = collateralParams[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_1280
                    continue 
    if not arg2.length:
        if arg1.length:
            idx = 0
            s = 0
            while idx < arg1.length:
                require idx < arg1.length
                require 0 < validCollateral.length
                if address(validCollateral.field_0) == mem[(32 * idx) + 140 len 20]:
                    if s >= collateralParams[mem[(32 * idx) + 140 len 20]].field_1280:
                        if idx:
                            revert with 0, 'Collateral list not sorted'
                else:
                    if not collateralParams[mem[(32 * idx) + 140 len 20]].field_1280:
                        revert with 0, 'collateral does not exist'
                    if s >= collateralParams[address(mem[(32 * idx) + 128])].field_1280:
                        if idx:
                            revert with 0, 'Collateral list not sorted'
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 169
                if not uint8(collateralParams[address(mem[(32 * idx) + 128])].field_1696):
                    revert with 0, 'Collateral not active'
                idx = idx + 1
                s = collateralParams[address(mem[(32 * idx) + 128])].field_1280
                continue 
    require 0 < arg1.length
    require 0 < arg2.length
    s = 0
    idx = collateralParams[mem[140 len 20]].field_1280
    t = mem[128]
    while idx != collateralParams[mem[(32 * arg1.length) + 172 len 20]].field_1280:
        if idx >= collateralParams[mem[(32 * arg1.length) + 172 len 20]].field_1280:
            if 0 == arg2.length:
                u = s
                v = idx
                w = t
                while u < arg1.length:
                    require u < arg1.length
                    require 0 < validCollateral.length
                    if address(validCollateral.field_0) == mem[(32 * u) + 140 len 20]:
                        if not uint8(collateralParams[mem[(32 * u) + 140 len 20]].field_1696):
                            revert with 0, 'Collateral not active'
                    else:
                        if not collateralParams[mem[(32 * u) + 140 len 20]].field_1280:
                            revert with 0, 'collateral does not exist'
                        if not uint8(collateralParams[address(mem[(32 * u) + 128])].field_1696):
                            revert with 0, 'Collateral not active'
                    mem[0] = mem[(32 * u) + 140 len 20]
                    mem[32] = 169
                    if collateralParams[address(mem[(32 * u) + 128])].field_1280 <= v:
                        if u:
                            revert with 0, 'Collateral list not sorted'
                    u = u + 1
                    v = collateralParams[address(mem[(32 * u) + 128])].field_1280
                    w = mem[(32 * u) + 128]
                    continue 
                idx = 0
                s = collateralParams[mem[(32 * arg1.length) + 172 len 20]].field_1280
                t = mem[(32 * arg1.length) + 160]
                while idx < arg2.length:
                    require idx < arg2.length
                    require 0 < validCollateral.length
                    if address(validCollateral.field_0) == mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                        mem[32] = 169
                        if collateralParams[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_1280 <= s:
                            if idx:
                                revert with 0, 'Collateral list not sorted'
                        idx = idx + 1
                        s = collateralParams[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_1280
                        t = mem[(32 * idx) + (32 * arg1.length) + 160]
                        continue 
                    if not collateralParams[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_1280:
                        revert with 0, 'collateral does not exist'
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    mem[32] = 169
                    if collateralParams[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_1280 <= s:
                        if idx:
                            revert with 0, 'Collateral list not sorted'
                    idx = idx + 1
                    s = collateralParams[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_1280
                    t = mem[(32 * idx) + (32 * arg1.length) + 160]
                    continue 
            require 0 < arg2.length
            require 0 < validCollateral.length
            if address(validCollateral.field_0) != mem[(32 * arg1.length) + 172 len 20]:
                if not collateralParams[address(mem[(32 * arg1.length) + 160])].field_1280:
                    revert with 0, 'collateral does not exist'
            mem[0] = mem[(32 * arg1.length) + 172 len 20]
            mem[32] = 169
            s = s
            idx = idx
            t = t
            continue 
        if s == arg1.length:
            u = s
            v = idx
            w = t
            while u < arg1.length:
                require u < arg1.length
                require 0 < validCollateral.length
                if address(validCollateral.field_0) == mem[(32 * u) + 140 len 20]:
                    if not uint8(collateralParams[mem[(32 * u) + 140 len 20]].field_1696):
                        revert with 0, 'Collateral not active'
                else:
                    if not collateralParams[mem[(32 * u) + 140 len 20]].field_1280:
                        revert with 0, 'collateral does not exist'
                    if not uint8(collateralParams[address(mem[(32 * u) + 128])].field_1696):
                        revert with 0, 'Collateral not active'
                mem[0] = mem[(32 * u) + 140 len 20]
                mem[32] = 169
                if collateralParams[address(mem[(32 * u) + 128])].field_1280 <= v:
                    if u:
                        revert with 0, 'Collateral list not sorted'
                u = u + 1
                v = collateralParams[address(mem[(32 * u) + 128])].field_1280
                w = mem[(32 * u) + 128]
                continue 
            idx = 0
            s = collateralParams[mem[(32 * arg1.length) + 172 len 20]].field_1280
            t = mem[(32 * arg1.length) + 160]
            while idx < arg2.length:
                require idx < arg2.length
                require 0 < validCollateral.length
                if address(validCollateral.field_0) == mem[(32 * idx) + (32 * arg1.length) + 172 len 20]:
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    mem[32] = 169
                    if collateralParams[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_1280 <= s:
                        if idx:
                            revert with 0, 'Collateral list not sorted'
                    idx = idx + 1
                    s = collateralParams[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_1280
                    t = mem[(32 * idx) + (32 * arg1.length) + 160]
                    continue 
                if not collateralParams[mem[(32 * idx) + (32 * arg1.length) + 172 len 20]].field_1280:
                    revert with 0, 'collateral does not exist'
                mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                mem[32] = 169
                if collateralParams[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_1280 <= s:
                    if idx:
                        revert with 0, 'Collateral list not sorted'
                idx = idx + 1
                s = collateralParams[address(mem[(32 * idx) + (32 * arg1.length) + 160])].field_1280
                t = mem[(32 * idx) + (32 * arg1.length) + 160]
                continue 
        require s < arg1.length
        require 0 < validCollateral.length
        if address(validCollateral.field_0) == mem[(32 * s) + 140 len 20]:
            if not uint8(collateralParams[mem[(32 * s) + 140 len 20]].field_1696):
                revert with 0, 'Collateral not active'
        else:
            if not collateralParams[mem[(32 * s) + 140 len 20]].field_1280:
                revert with 0, 'collateral does not exist'
            if not uint8(collateralParams[address(mem[(32 * s) + 128])].field_1696):
                revert with 0, 'Collateral not active'
        mem[0] = mem[(32 * s) + 140 len 20]
        mem[32] = 169
        if collateralParams[address(mem[(32 * s) + 128])].field_1280 <= idx:
            if s:
                revert with 0, 'Collateral list not sorted'
        s = s + 1
        idx = collateralParams[address(mem[(32 * s) + 128])].field_1280
        t = mem[(32 * s) + 128]
        continue 
    revert with 0, 
                32,
                34,
                0x724e6f206f7665726c617020696e20776974686472617720616e64206465706f7369,
                mem[(32 * arg1.length) + (32 * arg2.length) + 262 len 30]
}

function sub_0ffc967b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    idx = 0
    s = 0
    t = 0
    while idx < arg1.length:
        require idx < mem[96]
        _207 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _209 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[mem[64]] = 0x9c3bc3e600000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(collateralParams[mem[0]].field_512))
        staticcall address(collateralParams[mem[0]].field_512).fetchPrice_v() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = address(_207)
        mem[32] = 169
        if not ext_call.return_data[0]:
            _218 = mem[64]
            mem[64] = mem[64] + 64
            mem[_218] = 8
            mem[_218 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
            if not 10^(collateralParams[address(_207)].field_768 + 18):
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                idx = 32
                while idx < 8:
                    mem[idx + mem[64] + 68] = mem[idx + _218 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not ext_call.return_data[0]:
                    _262 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_262] = 8
                    mem[_262 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    if 10^(collateralParams[address(_207)].field_768 + 18):
                        if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                            revert with 0, 'add overflow'
                        if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                            revert with 0, 'add overflow'
                        idx = idx + 1
                        s = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                        t = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _262 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if _209 * ext_call.return_data[0] / ext_call.return_data[0] != _209:
                        revert with 0, 'mul overflow'
                    if not _209 * ext_call.return_data[0]:
                        _266 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_266] = 8
                        mem[_266 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        if 10^(collateralParams[address(_207)].field_768 + 18):
                            if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                                revert with 0, 'add overflow'
                            if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                                revert with 0, 'add overflow'
                            idx = idx + 1
                            s = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                            t = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 8
                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = 32
                        while idx < 8:
                            mem[idx + mem[64] + 68] = mem[idx + _266 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / _209 * ext_call.return_data[0] != collateralParams[address(_207)].field_256:
                            revert with 0, 'mul overflow'
                        _278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_278] = 8
                        mem[_278 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        if 10^(collateralParams[address(_207)].field_768 + 18):
                            if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                                revert with 0, 'add overflow'
                            if (collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                                revert with 0, 'add overflow'
                            idx = idx + 1
                            s = (collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                            t = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 8
                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = 32
                        while idx < 8:
                            mem[idx + mem[64] + 68] = mem[idx + _278 + 32]
                            idx = idx + 32
                            continue 
        else:
            if _209 * ext_call.return_data[0] / ext_call.return_data[0] != _209:
                revert with 0, 'mul overflow'
            if not _209 * ext_call.return_data[0]:
                _221 = mem[64]
                mem[64] = mem[64] + 64
                mem[_221] = 8
                mem[_221 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not 10^(collateralParams[address(_207)].field_768 + 18):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _221 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not ext_call.return_data[0]:
                        _265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_265] = 8
                        mem[_265 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        if 10^(collateralParams[address(_207)].field_768 + 18):
                            if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                                revert with 0, 'add overflow'
                            if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                                revert with 0, 'add overflow'
                            idx = idx + 1
                            s = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                            t = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 8
                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = 32
                        while idx < 8:
                            mem[idx + mem[64] + 68] = mem[idx + _265 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if _209 * ext_call.return_data[0] / ext_call.return_data[0] != _209:
                            revert with 0, 'mul overflow'
                        if not _209 * ext_call.return_data[0]:
                            _274 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_274] = 8
                            mem[_274 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if 10^(collateralParams[address(_207)].field_768 + 18):
                                if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                                    revert with 0, 'add overflow'
                                if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                                    revert with 0, 'add overflow'
                                idx = idx + 1
                                s = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                                t = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 8
                            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            idx = 32
                            while idx < 8:
                                mem[idx + mem[64] + 68] = mem[idx + _274 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / _209 * ext_call.return_data[0] != collateralParams[address(_207)].field_256:
                                revert with 0, 'mul overflow'
                            _294 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_294] = 8
                            mem[_294 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if 10^(collateralParams[address(_207)].field_768 + 18):
                                if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                                    revert with 0, 'add overflow'
                                if (collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                                    revert with 0, 'add overflow'
                                idx = idx + 1
                                s = (collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                                t = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 8
                            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            idx = 32
                            while idx < 8:
                                mem[idx + mem[64] + 68] = mem[idx + _294 + 32]
                                idx = idx + 32
                                continue 
            else:
                if collateralParams[address(_207)].field_0 * _209 * ext_call.return_data[0] / _209 * ext_call.return_data[0] != collateralParams[address(_207)].field_0:
                    revert with 0, 'mul overflow'
                _226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_226] = 8
                mem[_226 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                if not 10^(collateralParams[address(_207)].field_768 + 18):
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 8
                    mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                    idx = 32
                    while idx < 8:
                        mem[idx + mem[64] + 68] = mem[idx + _226 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not ext_call.return_data[0]:
                        _273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_273] = 8
                        mem[_273 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        if 10^(collateralParams[address(_207)].field_768 + 18):
                            if (collateralParams[address(_207)].field_0 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                                revert with 0, 'add overflow'
                            if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                                revert with 0, 'add overflow'
                            idx = idx + 1
                            s = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                            t = (collateralParams[address(_207)].field_0 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 8
                        mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                        idx = 32
                        while idx < 8:
                            mem[idx + mem[64] + 68] = mem[idx + _273 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if _209 * ext_call.return_data[0] / ext_call.return_data[0] != _209:
                            revert with 0, 'mul overflow'
                        if not _209 * ext_call.return_data[0]:
                            _290 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_290] = 8
                            mem[_290 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if 10^(collateralParams[address(_207)].field_768 + 18):
                                if (collateralParams[address(_207)].field_0 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                                    revert with 0, 'add overflow'
                                if (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                                    revert with 0, 'add overflow'
                                idx = idx + 1
                                s = (0 / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                                t = (collateralParams[address(_207)].field_0 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 8
                            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            idx = 32
                            while idx < 8:
                                mem[idx + mem[64] + 68] = mem[idx + _290 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / _209 * ext_call.return_data[0] != collateralParams[address(_207)].field_256:
                                revert with 0, 'mul overflow'
                            _315 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_315] = 8
                            mem[_315 + 32] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            if 10^(collateralParams[address(_207)].field_768 + 18):
                                if (collateralParams[address(_207)].field_0 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + t < t:
                                    revert with 0, 'add overflow'
                                if (collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + s < s:
                                    revert with 0, 'add overflow'
                                idx = idx + 1
                                s = (collateralParams[address(_207)].field_256 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + s
                                t = (collateralParams[address(_207)].field_0 * _209 * ext_call.return_data[0] / 10^(collateralParams[address(_207)].field_768 + 18)) + t
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 8
                            mem[mem[64] + 68] = 0x6469762062792030000000000000000000000000000000000000000000000000
                            idx = 32
                            while idx < 8:
                                mem[idx + mem[64] + 68] = mem[idx + _315 + 32]
                                idx = idx + 32
                                continue 
        revert with 0, ''
    return t, s
}



}
