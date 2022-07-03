contract main {




// =====================  Runtime code  =====================


#
#  - sub_0442275c(?)
#  - sub_171c1fda(?)
#  - sub_e118fbba(?)
#  - _fallback()
#
address owner;
address sub_5464f3c4Address;
address sub_717369e3Address;
address sub_ae38a8b9Address;
uint256 sub_588eb7c5;
mapping of uint256 sub_9af71935;
mapping of uint256 sub_20362c37;
address sub_a1c07933Address;
mapping of address sub_43c4643d;
mapping of struct sub_9b751b52;
mapping of struct sub_33b100d4;
mapping of address stor11;
uint16 stor12;
uint16 stor12; offset 16
uint16 stor12; offset 32
address sub_52df107fAddress; offset 48

function sub_20362c37(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_20362c37[arg1]
}

function sub_33b100d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_33b100d4[arg1].field_0, sub_33b100d4[arg1].field_256
}

function sub_43c4643d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_43c4643d[arg1]
}

function sub_52df107f(?) {
    return sub_52df107fAddress
}

function sub_5464f3c4(?) {
    return sub_5464f3c4Address
}

function sub_588eb7c5(?) {
    return sub_588eb7c5
}

function sub_717369e3(?) {
    return sub_717369e3Address
}

function owner() {
    return owner
}

function sub_9af71935(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9af71935[arg1]
}

function sub_9b751b52(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_9b751b52[arg1].field_0), 
           sub_9b751b52[arg1].field_0,
           sub_9b751b52[arg1].field_0,
           sub_9b751b52[arg1].field_256,
           sub_9b751b52[arg1].field_256,
           sub_9b751b52[arg1].field_256,
           sub_9b751b52[arg1].field_256,
           sub_9b751b52[arg1].field_256,
           sub_9b751b52[arg1].field_256,
           sub_9b751b52[arg1].field_512,
           sub_9b751b52[arg1].field_768,
           sub_9b751b52[arg1].field_768,
           sub_9b751b52[arg1].field_768,
           sub_9b751b52[arg1].field_768,
           sub_9b751b52[arg1].field_768,
           sub_9b751b52[arg1].field_768,
           sub_9b751b52[arg1].field_1024,
           sub_9b751b52[arg1].field_1280,
           sub_9b751b52[arg1].field_1536,
           sub_9b751b52[arg1].field_1792
}

function sub_a1c07933(?) {
    return sub_a1c07933Address
}

function sub_ae38a8b9(?) {
    return sub_ae38a8b9Address
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 1557672338
    revert with 1673990072
}

function sub_b75c5558(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor11[address(arg1)]:
        return stor11[address(arg1)]
    return sub_52df107fAddress
}

function getVolume(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 1714970531
    return sub_9af71935[address(arg1)], sub_20362c37[address(arg1)]
}

function setServiceFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 1557672338
    sub_ae38a8b9Address = arg1
    emit 0x1d817645: arg1
}

function sub_5abe7bcb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 1557672338
    sub_717369e3Address = address(arg1)
    emit 0x1d817645: address(arg1)
}

function sub_d74ff4b9(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 1557672338
    uint16(stor12.field_0) = uint16(arg1)
    emit 0x69085e75: uint16(arg1)
}

function sub_8311d4ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 1557672338
    uint16(stor12.field_16) = uint16(arg1)
    emit 0x8f6a502d: uint16(arg1)
}

function sub_f3fbeba8(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 1557672338
    if arg1 > 10000:
        revert with 3444466023
    uint16(stor12.field_32) = uint16(arg1)
    emit 0x41bde68d: uint16(arg1)
}

function setDefaultRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 1557672338
    if not arg1:
        revert with 1714970531
    sub_52df107fAddress = arg1
    emit 0x8201f998: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 1557672338
    if not arg1:
        revert with 1714970531
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4b4703ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_5464f3c4Address == address(arg1):
        return 0
    if sub_9b751b52[address(arg1)].field_0:
        return sub_9b751b52[address(arg1)].field_8
    return uint16(stor12.field_0)
}

function sub_6c8cdafa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 1557672338
    if not address(arg1):
        revert with 1714970531
    sub_a1c07933Address = address(arg1)
    emit 0xae64caea: address(arg1)
}

function sub_eb5c4461(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    sub_9b751b52[address(arg1)].field_8 = arg2
    emit 0x104a07c7: arg2, address(arg1)
}

function sub_3c6c9e0f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    sub_9b751b52[address(arg1)].field_1792 = arg2
    emit 0x648f26b5: arg2, address(arg1)
}

function sub_6beeb276(?) {
    if owner != msg.sender:
        revert with 1557672338
    call sub_5464f3c4Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc67dd0b1 
}

function setTokenRouter(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    stor11[address(arg1)] = arg2
    emit 0x95b5521e: arg1, arg2
}

function sub_9f257dc4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    sub_43c4643d[address(arg1)] = address(arg2)
    emit 0x11ca3999: address(arg1), address(arg2)
}

function sub_2b0f8634(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    sub_9b751b52[address(arg1)].field_1536 = address(arg2)
    emit 0xbfa71997: address(arg1), address(arg2)
}

function sub_5e87c9cc(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    sub_9b751b52[address(arg1)].field_1024 = address(arg2)
    sub_9b751b52[address(arg1)].field_1280 = address(arg3)
    emit 0xd1f144c7: address(arg1), address(arg2), address(arg3)
}

function sub_8e12d510(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    if not address(arg1):
        revert with 1714970531
    sub_9b751b52[address(arg1)].field_24 = address(arg2)
    sub_9b751b52[address(arg1)].field_512 = address(arg3)
    emit 0xb2943a76: address(arg1), address(arg2), address(arg3)
}

function sub_15ea1272(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9b751b52[address(arg1)].field_768 > -sub_9b751b52[address(arg1)].field_784 + 65535:
        revert with 0, 17
    if uint16(sub_9b751b52[address(arg1)].field_784 + sub_9b751b52[address(arg1)].field_768) > -sub_9b751b52[address(arg1)].field_800 + 65535:
        revert with 0, 17
    if uint16(sub_9b751b52[address(arg1)].field_800 + uint16(sub_9b751b52[address(arg1)].field_784 + sub_9b751b52[address(arg1)].field_768)) > -sub_9b751b52[address(arg1)].field_816 + 65535:
        revert with 0, 17
    if uint16(sub_9b751b52[address(arg1)].field_816 + uint16(sub_9b751b52[address(arg1)].field_800 + uint16(sub_9b751b52[address(arg1)].field_784 + sub_9b751b52[address(arg1)].field_768))) > -sub_9b751b52[address(arg1)].field_832 + 65535:
        revert with 0, 17
    if uint16(sub_9b751b52[address(arg1)].field_832 + uint16(sub_9b751b52[address(arg1)].field_816 + uint16(sub_9b751b52[address(arg1)].field_800 + uint16(sub_9b751b52[address(arg1)].field_784 + sub_9b751b52[address(arg1)].field_768)))) > -sub_9b751b52[address(arg1)].field_848 + 65535:
        revert with 0, 17
    return uint16(sub_9b751b52[address(arg1)].field_848 + uint16(sub_9b751b52[address(arg1)].field_832 + uint16(sub_9b751b52[address(arg1)].field_816 + uint16(sub_9b751b52[address(arg1)].field_800 + uint16(sub_9b751b52[address(arg1)].field_784 + sub_9b751b52[address(arg1)].field_768)))))
}

function sub_a21c017b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_9b751b52[address(arg1)].field_256 > -sub_9b751b52[address(arg1)].field_272 + 65535:
        revert with 0, 17
    if uint16(sub_9b751b52[address(arg1)].field_272 + sub_9b751b52[address(arg1)].field_256) > -sub_9b751b52[address(arg1)].field_288 + 65535:
        revert with 0, 17
    if uint16(sub_9b751b52[address(arg1)].field_288 + uint16(sub_9b751b52[address(arg1)].field_272 + sub_9b751b52[address(arg1)].field_256)) > -sub_9b751b52[address(arg1)].field_304 + 65535:
        revert with 0, 17
    if uint16(sub_9b751b52[address(arg1)].field_304 + uint16(sub_9b751b52[address(arg1)].field_288 + uint16(sub_9b751b52[address(arg1)].field_272 + sub_9b751b52[address(arg1)].field_256))) > -sub_9b751b52[address(arg1)].field_320 + 65535:
        revert with 0, 17
    if uint16(sub_9b751b52[address(arg1)].field_320 + uint16(sub_9b751b52[address(arg1)].field_304 + uint16(sub_9b751b52[address(arg1)].field_288 + uint16(sub_9b751b52[address(arg1)].field_272 + sub_9b751b52[address(arg1)].field_256)))) > -sub_9b751b52[address(arg1)].field_336 + 65535:
        revert with 0, 17
    return uint16(sub_9b751b52[address(arg1)].field_336 + uint16(sub_9b751b52[address(arg1)].field_320 + uint16(sub_9b751b52[address(arg1)].field_304 + uint16(sub_9b751b52[address(arg1)].field_288 + uint16(sub_9b751b52[address(arg1)].field_272 + sub_9b751b52[address(arg1)].field_256)))))
}

function sub_0ce3f357(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    require arg7 == uint16(arg7)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    if uint16(arg2) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(arg2)) > -uint16(arg4) + 65535:
        revert with 0, 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))) > -uint16(arg5) + 65535:
        revert with 0, 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))) > -uint16(arg6) + 65535:
        revert with 0, 17
    if uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))))) > -uint16(arg7) + 65535:
        revert with 0, 17
    if uint16(uint16(arg7) + uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))))) > 2000:
        revert with 0, 'fees too high'
    sub_9b751b52[address(arg1)].field_256 = uint16(arg2)
    sub_9b751b52[address(arg1)].field_272 = uint16(arg3)
    sub_9b751b52[address(arg1)].field_288 = uint16(arg4)
    sub_9b751b52[address(arg1)].field_304 = uint16(arg5)
    sub_9b751b52[address(arg1)].field_320 = uint16(arg6)
    sub_9b751b52[address(arg1)].field_336 = uint16(arg7)
    emit 0xfd252801: arg2 << 240, arg3 << 240, arg4 << 240, arg5 << 240, arg6 << 240, uint16(arg7), address(arg1)
}

function sub_9a1a32c0(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    require arg7 == uint16(arg7)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    if uint16(arg2) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(arg2)) > -uint16(arg4) + 65535:
        revert with 0, 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))) > -uint16(arg5) + 65535:
        revert with 0, 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))) > -uint16(arg6) + 65535:
        revert with 0, 17
    if uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))))) > -uint16(arg7) + 65535:
        revert with 0, 17
    if uint16(uint16(arg7) + uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))))) > 2000:
        revert with 0, 'fees too high'
    sub_9b751b52[address(arg1)].field_768 = uint16(arg2)
    sub_9b751b52[address(arg1)].field_784 = uint16(arg3)
    sub_9b751b52[address(arg1)].field_800 = uint16(arg4)
    sub_9b751b52[address(arg1)].field_816 = uint16(arg5)
    sub_9b751b52[address(arg1)].field_832 = uint16(arg6)
    sub_9b751b52[address(arg1)].field_848 = uint16(arg7)
    emit 0x5c89b85e: arg2 << 240, arg3 << 240, arg4 << 240, arg5 << 240, arg6 << 240, uint16(arg7), address(arg1)
}

function sub_14ae75c4(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    if owner != msg.sender:
        if sub_43c4643d[address(cd[4])] != msg.sender:
            revert with 568041854
    if not address(cd[4]):
        revert with 1714970531
    if ('cd', 36).length >= 32:
        sub_33b100d4[address(cd[4])].field_0 = ('cd', 36)[0]
        if ('cd', 68).length >= 32:
            sub_33b100d4[address(cd[4])].field_256 = ('cd', 68)[0]
        else:
            sub_33b100d4[address(cd[4])].field_256 = -1 << 8 * -('cd', 68).length + 32 and ('cd', 68)[0]
    else:
        sub_33b100d4[address(cd[4])].field_0 = -1 << 8 * -('cd', 36).length + 32 and ('cd', 36)[0]
        if ('cd', 68).length >= 32:
            sub_33b100d4[address(cd[4])].field_256 = ('cd', 68)[0]
        else:
            sub_33b100d4[address(cd[4])].field_256 = -1 << 8 * -('cd', 68).length + 32 and ('cd', 68)[0]
    mem[ceil32(('cd', 36).length) + 256] = ('cd', 68).length
    mem[ceil32(('cd', 36).length) + 288 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + ceil32(('cd', 36).length) + 288] = 0
    emit 0x2fa2f378: 64, ceil32(('cd', 36).length) + 96, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], 0, mem[('cd', 36).length + 288 len ceil32(('cd', 36).length) + ceil32(('cd', 68).length) - ('cd', 36).length], address(cd[4])
}

function sub_602ab924(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 1557672338
    sub_9b751b52[address(arg1)].field_0 = uint8(bool(sub_9b751b52[stor1].field_0))
    sub_9b751b52[address(arg1)].field_8 = sub_9b751b52[stor1].field_8
    sub_9b751b52[address(arg1)].field_24 = sub_9b751b52[stor1].field_24
    sub_9b751b52[address(arg1)].field_256 = sub_9b751b52[stor1].field_256
    sub_9b751b52[address(arg1)].field_272 = sub_9b751b52[stor1].field_272
    sub_9b751b52[address(arg1)].field_288 = sub_9b751b52[stor1].field_288
    sub_9b751b52[address(arg1)].field_304 = sub_9b751b52[stor1].field_304
    sub_9b751b52[address(arg1)].field_320 = sub_9b751b52[stor1].field_320
    sub_9b751b52[address(arg1)].field_336 = sub_9b751b52[stor1].field_336
    sub_9b751b52[address(arg1)].field_512 = sub_9b751b52[stor1].field_512
    sub_9b751b52[address(arg1)].field_768 = sub_9b751b52[stor1].field_768
    sub_9b751b52[address(arg1)].field_784 = sub_9b751b52[stor1].field_784
    sub_9b751b52[address(arg1)].field_800 = sub_9b751b52[stor1].field_800
    sub_9b751b52[address(arg1)].field_816 = sub_9b751b52[stor1].field_816
    sub_9b751b52[address(arg1)].field_832 = sub_9b751b52[stor1].field_832
    sub_9b751b52[address(arg1)].field_848 = sub_9b751b52[stor1].field_848
    sub_9b751b52[address(arg1)].field_1024 = sub_9b751b52[stor1].field_1024
    sub_9b751b52[address(arg1)].field_1280 = sub_9b751b52[stor1].field_1280
    sub_9b751b52[address(arg1)].field_1536 = sub_9b751b52[stor1].field_1536
    sub_9b751b52[address(arg1)].field_1792 = sub_9b751b52[stor1].field_1792
    sub_9b751b52[address(arg1)].field_512 = address(arg1)
    sub_33b100d4[address(arg1)].field_0 = sub_33b100d4[stor1].field_0
    sub_33b100d4[address(arg1)].field_256 = sub_33b100d4[stor1].field_256
    sub_5464f3c4Address = address(arg1)
    emit 0x23977e94: address(arg1)
}

function sub_d729bbb0(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    require arg7 == uint16(arg7)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    if uint16(arg2) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(arg2)) > -uint16(arg4) + 65535:
        revert with 0, 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))) > -uint16(arg5) + 65535:
        revert with 0, 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))) > -uint16(arg6) + 65535:
        revert with 0, 17
    if uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))))) > -uint16(arg7) + 65535:
        revert with 0, 17
    if uint16(uint16(arg7) + uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))))) > 2000:
        revert with 0, 'fees too high'
    sub_9b751b52[address(arg1)].field_256 = uint16(arg2)
    sub_9b751b52[address(arg1)].field_272 = uint16(arg3)
    sub_9b751b52[address(arg1)].field_288 = uint16(arg4)
    sub_9b751b52[address(arg1)].field_304 = uint16(arg5)
    sub_9b751b52[address(arg1)].field_320 = uint16(arg6)
    sub_9b751b52[address(arg1)].field_336 = uint16(arg7)
    sub_9b751b52[address(arg1)].field_768 = uint16(arg2)
    sub_9b751b52[address(arg1)].field_784 = uint16(arg3)
    sub_9b751b52[address(arg1)].field_800 = uint16(arg4)
    sub_9b751b52[address(arg1)].field_816 = uint16(arg5)
    sub_9b751b52[address(arg1)].field_832 = uint16(arg6)
    sub_9b751b52[address(arg1)].field_848 = uint16(arg7)
    emit 0x2146a8e9: arg2 << 240, arg3 << 240, arg4 << 240, arg5 << 240, arg6 << 240, uint16(arg7), address(arg1)
}

function sub_a29b7039(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
        if owner != msg.sender:
            if sub_43c4643d[address(arg1)] != msg.sender:
                revert with 568041854
    if not address(arg1):
        revert with 1714970531
    if 0 > -uint16(arg2) + 65535:
        revert with 0, 17
    if uint16(arg2) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(arg2)) > -uint16(arg4) + 65535:
        revert with 0, 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))) > -uint16(arg5) + 65535:
        revert with 0, 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))) > 2000:
        revert with 0, 'fees too high'
    sub_9b751b52[address(arg1)].field_0 = 1
    sub_9b751b52[address(arg1)].field_8 = uint16(stor12.field_16)
    sub_9b751b52[address(arg1)].field_24 = 0
    sub_9b751b52[address(arg1)].field_256 = 0
    sub_9b751b52[address(arg1)].field_256 = 0
    sub_9b751b52[address(arg1)].field_272 = 0
    sub_9b751b52[address(arg1)].field_288 = 0
    sub_9b751b52[address(arg1)].field_304 = 0
    sub_9b751b52[address(arg1)].field_320 = 0
    sub_9b751b52[address(arg1)].field_336 = 0
    sub_9b751b52[address(arg1)].field_512 = 0
    sub_9b751b52[address(arg1)].field_768 = 0
    sub_9b751b52[address(arg1)].field_768 = 0
    sub_9b751b52[address(arg1)].field_784 = 0
    sub_9b751b52[address(arg1)].field_800 = 0
    sub_9b751b52[address(arg1)].field_816 = 0
    sub_9b751b52[address(arg1)].field_832 = 0
    sub_9b751b52[address(arg1)].field_848 = 0
    sub_9b751b52[address(arg1)].field_1024 = 0
    sub_9b751b52[address(arg1)].field_1280 = 0
    sub_9b751b52[address(arg1)].field_1280 = 0
    sub_9b751b52[address(arg1)].field_1536 = 0
    sub_9b751b52[address(arg1)].field_1536 = 0
    sub_9b751b52[address(arg1)].field_1792 = 0
    sub_9b751b52[address(arg1)].field_1792 = 0
    emit 0x7e1b98fa: 0, 0, arg2 << 240, arg3 << 240, arg4 << 240, uint16(arg5), address(arg1), 0, 0
}

function sub_422f277b(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
        if owner != msg.sender:
            if sub_43c4643d[address(arg1)] != msg.sender:
                revert with 568041854
    if not address(arg1):
        revert with 1714970531
    if uint16(arg2) > 65535:
        revert with 0, 17
    if uint16(arg2) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(arg2)) > -uint16(arg4) + 65535:
        revert with 0, 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))) > -uint16(arg5) + 65535:
        revert with 0, 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))) > -uint16(arg6) + 65535:
        revert with 0, 17
    if uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))))) > 2000:
        revert with 0, 'fees too high'
    sub_9b751b52[address(arg1)].field_0 = 1
    sub_9b751b52[address(arg1)].field_8 = uint16(stor12.field_16)
    sub_9b751b52[address(arg1)].field_24 = address(arg7)
    sub_9b751b52[address(arg1)].field_256 = 0
    sub_9b751b52[address(arg1)].field_272 = 0
    sub_9b751b52[address(arg1)].field_288 = 0
    sub_9b751b52[address(arg1)].field_304 = 0
    sub_9b751b52[address(arg1)].field_320 = 0
    sub_9b751b52[address(arg1)].field_336 = 0
    sub_9b751b52[address(arg1)].field_512 = 0
    sub_9b751b52[address(arg1)].field_768 = 0
    sub_9b751b52[address(arg1)].field_768 = 0
    sub_9b751b52[address(arg1)].field_784 = 0
    sub_9b751b52[address(arg1)].field_800 = 0
    sub_9b751b52[address(arg1)].field_816 = 0
    sub_9b751b52[address(arg1)].field_832 = 0
    sub_9b751b52[address(arg1)].field_848 = 0
    sub_9b751b52[address(arg1)].field_1024 = 0
    sub_9b751b52[address(arg1)].field_1280 = 0
    sub_9b751b52[address(arg1)].field_1280 = 0
    sub_9b751b52[address(arg1)].field_1536 = 0
    sub_9b751b52[address(arg1)].field_1536 = 0
    sub_9b751b52[address(arg1)].field_1792 = 0
    sub_9b751b52[address(arg1)].field_1792 = 0
    emit 0x7e1b98fa: arg2 << 240, 0, arg3 << 240, arg4 << 240, arg5 << 240, uint16(arg6), address(arg1), address(arg7), 0
}

function sub_111913f5(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    require arg5 == uint16(arg5)
    require arg6 == uint16(arg6)
    require arg7 == uint16(arg7)
    require arg8 == address(arg8)
    require arg9 == address(arg9)
    if owner != msg.sender:
        if sub_43c4643d[address(arg1)] != msg.sender:
            revert with 568041854
    if not address(arg1):
        revert with 1714970531
    if uint16(arg2) > -uint16(arg3) + 65535:
        revert with 0, 17
    if uint16(uint16(arg3) + uint16(arg2)) > -uint16(arg4) + 65535:
        revert with 0, 17
    if uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))) > -uint16(arg5) + 65535:
        revert with 0, 17
    if uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))) > -uint16(arg6) + 65535:
        revert with 0, 17
    if uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2))))) > -uint16(arg7) + 65535:
        revert with 0, 17
    if uint16(uint16(arg7) + uint16(uint16(arg6) + uint16(uint16(arg5) + uint16(uint16(arg4) + uint16(uint16(arg3) + uint16(arg2)))))) > 2000:
        revert with 0, 'fees too high'
    sub_9b751b52[address(arg1)].field_0 = 1
    sub_9b751b52[address(arg1)].field_8 = uint16(stor12.field_16)
    sub_9b751b52[address(arg1)].field_24 = address(arg8)
    sub_9b751b52[address(arg1)].field_256 = 0
    sub_9b751b52[address(arg1)].field_272 = 0
    sub_9b751b52[address(arg1)].field_288 = 0
    sub_9b751b52[address(arg1)].field_304 = 0
    sub_9b751b52[address(arg1)].field_320 = 0
    sub_9b751b52[address(arg1)].field_336 = 0
    sub_9b751b52[address(arg1)].field_512 = address(arg9)
    sub_9b751b52[address(arg1)].field_768 = 0
    sub_9b751b52[address(arg1)].field_784 = 0
    sub_9b751b52[address(arg1)].field_800 = 0
    sub_9b751b52[address(arg1)].field_816 = 0
    sub_9b751b52[address(arg1)].field_832 = 0
    sub_9b751b52[address(arg1)].field_848 = 0
    sub_9b751b52[address(arg1)].field_1024 = 0
    sub_9b751b52[address(arg1)].field_1280 = 0
    sub_9b751b52[address(arg1)].field_1280 = 0
    sub_9b751b52[address(arg1)].field_1536 = 0
    sub_9b751b52[address(arg1)].field_1536 = 0
    sub_9b751b52[address(arg1)].field_1792 = 0
    sub_9b751b52[address(arg1)].field_1792 = 0
    emit 0x7e1b98fa: arg2 << 240, arg3 << 240, arg4 << 240, arg5 << 240, arg6 << 240, uint16(arg7), address(arg1), address(arg8), address(arg9)
}

function sub_0e19177c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 1714970531
    if sub_9b751b52[address(arg1)].field_0:
        return bool(sub_9b751b52[address(arg1)].field_0), 
               sub_9b751b52[address(arg1)].field_0,
               sub_9b751b52[address(arg1)].field_0,
               sub_9b751b52[address(arg1)].field_256,
               sub_9b751b52[address(arg1)].field_256,
               sub_9b751b52[address(arg1)].field_256,
               sub_9b751b52[address(arg1)].field_256,
               sub_9b751b52[address(arg1)].field_256,
               sub_9b751b52[address(arg1)].field_256,
               sub_9b751b52[address(arg1)].field_512,
               sub_9b751b52[address(arg1)].field_768,
               sub_9b751b52[address(arg1)].field_768,
               sub_9b751b52[address(arg1)].field_768,
               sub_9b751b52[address(arg1)].field_768,
               sub_9b751b52[address(arg1)].field_768,
               sub_9b751b52[address(arg1)].field_768,
               sub_9b751b52[address(arg1)].field_1024,
               sub_9b751b52[address(arg1)].field_1280,
               sub_9b751b52[address(arg1)].field_1536,
               sub_9b751b52[address(arg1)].field_1792,
               704,
               768,
               32,
               sub_33b100d4[address(arg1)].field_0,
               32,
               sub_33b100d4[address(arg1)].field_256
    return bool(sub_9b751b52[address(arg1)].field_0), 
           uint16(stor12.field_0),
           sub_9b751b52[address(arg1)].field_0,
           sub_9b751b52[address(arg1)].field_256,
           sub_9b751b52[address(arg1)].field_256,
           sub_9b751b52[address(arg1)].field_256,
           sub_9b751b52[address(arg1)].field_256,
           sub_9b751b52[address(arg1)].field_256,
           sub_9b751b52[address(arg1)].field_256,
           sub_9b751b52[address(arg1)].field_512,
           sub_9b751b52[address(arg1)].field_768,
           sub_9b751b52[address(arg1)].field_768,
           sub_9b751b52[address(arg1)].field_768,
           sub_9b751b52[address(arg1)].field_768,
           sub_9b751b52[address(arg1)].field_768,
           sub_9b751b52[address(arg1)].field_768,
           sub_9b751b52[address(arg1)].field_1024,
           sub_9b751b52[address(arg1)].field_1280,
           sub_9b751b52[address(arg1)].field_1536,
           sub_9b751b52[address(arg1)].field_1792,
           704,
           768,
           32,
           sub_33b100d4[address(arg1)].field_0,
           32,
           sub_33b100d4[address(arg1)].field_256
}



}
