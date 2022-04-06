contract main {




// =====================  Runtime code  =====================


#
#  - sub_8012a815(?)
#  - sub_eb2f7ea0(?)
#
uint8 stor0; offset 160
uint32 stor0;
uint128 stor0; offset 160
address owner;
uint256 stor0;
mapping of uint8 stor1;
uint8 stor3;
address stor3; offset 8

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ef9b8b32(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_0) = uint8(arg1)
    return 1
}

function isVIP(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor3.field_8))
    staticcall address(stor3.field_8).0xe83c4148 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return (ext_call.return_data[0] > block.timestamp)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_761744f5(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    return 1
}

function sub_8b85bfbf(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function claimTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x545472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x545472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
    ('bool', 'ext_call.success')
    return eth.balance(this.address)
}

function invalidateSignature(uint8 arg1, bytes32 arg2, bytes32 arg3) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0
    call 0x0 with:
       funct uint32(stor0.field_0)
         gas gas_remaining wei
        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    return 0
}

function sub_f23a0228(?) payable {
    require calldata.size - 4 >= 288
    require cd[196] <= 4294967296
    require cd[196] + 36 <= calldata.size
    require ('cd', 196).length <= 4294967296 and cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    if not uint8(stor0.field_160):
        revert with 0, 'ReentrancyGuard: reentrant call'
    Mask(96, 0, stor0.field_160) = 0
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[64] = 480
    mem[288] = msg.value
    mem[320] = cd[36]
    require 0 < ('cd', 196).length
    mem[416] = address(('cd', 196)[0])
    require 1 < ('cd', 196).length
    mem[448] = address(('cd', 196)[1])
    if not uint8(stor3.field_0):
        if cd[100] <= 0:
            mem[352] = 0
            mem[484] = address(cd[228])
            require ext_code.size(address(('cd', 196)[1]))
            staticcall address(('cd', 196)[1]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[228])
            mem[480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[384] = ext_call.return_data[0]
            s = 96
            while msg.value > 0:
                if mem[288] >= cd[36]:
                    mem[288] = mem[288] - cd[36]
                    if cd[132] >= 100:
                        _5713 = mem[320]
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = address(cd[228])
                        mem[mem[64] + 100] = cd[260]
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 196).length
                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value _5713 wei
                             gas gas_remaining wei
                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5768 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5796 = mem[_5768]
                        require mem[_5768] <= 4294967296
                        require mem[_5768] + 32 <= return_data.size
                        require mem[mem[_5768] + _5768] <= 4294967296 and mem[_5768] + (32 * mem[mem[_5768] + _5768]) + 32 <= return_data.size
                        mem[_5768 + ceil32(return_data.size)] = mem[mem[_5768] + _5768]
                        _5876 = mem[_5796 + _5768]
                        idx = 0
                        while idx < 32 * _5876:
                            mem[_5768 + ceil32(return_data.size) + idx + 32] = mem[_5796 + _5768 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _5876) + _5768 + ceil32(return_data.size) + 32
                        if not mem[s]:
                            s = _5768 + ceil32(return_data.size)
                            continue 
                        require 0 < mem[_5768 + ceil32(return_data.size)]
                        require 0 < mem[s]
                        mem[s + 32] = mem[s + 32] + mem[_5768 + ceil32(return_data.size) + 32]
                        require 1 < mem[_5768 + ceil32(return_data.size)]
                        require 1 < mem[s]
                        mem[s + 64] = mem[s + 64] + mem[_5768 + ceil32(return_data.size) + 64]
                    else:
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _5799 = mem[416]
                        _5800 = mem[448]
                        if mem[428 len 20] == mem[460 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[428 len 20] < mem[460 len 20]:
                            if not mem[428 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = mem[428 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_5800)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_5799), address(_5800)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if mem[320] <= 0:
                                revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                            if address(_5799) == address(_5799):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7506 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7506 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7661 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7819 = mem[_7661]
                                        require mem[_7661] <= 4294967296
                                        require mem[_7661] + 32 <= return_data.size
                                        require mem[mem[_7661] + _7661] <= 4294967296 and mem[_7661] + (32 * mem[mem[_7661] + _7661]) + 32 <= return_data.size
                                        mem[_7661 + ceil32(return_data.size)] = mem[mem[_7661] + _7661]
                                        _8184 = mem[_7819 + _7661]
                                        idx = 0
                                        while idx < 32 * _8184:
                                            mem[_7661 + ceil32(return_data.size) + idx + 32] = mem[_7819 + _7661 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8184) + _7661 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7661 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7661 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7661 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7661 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7661 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7662 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7662 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7899 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8068 = mem[_7899]
                                        require mem[_7899] <= 4294967296
                                        require mem[_7899] + 32 <= return_data.size
                                        require mem[mem[_7899] + _7899] <= 4294967296 and mem[_7899] + (32 * mem[mem[_7899] + _7899]) + 32 <= return_data.size
                                        mem[_7899 + ceil32(return_data.size)] = mem[mem[_7899] + _7899]
                                        _8488 = mem[_8068 + _7899]
                                        idx = 0
                                        while idx < 32 * _8488:
                                            mem[_7899 + ceil32(return_data.size) + idx + 32] = mem[_8068 + _7899 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8488) + _7899 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7899 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7899 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7899 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7899 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7899 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7665 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7665 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7900 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8070 = mem[_7900]
                                        require mem[_7900] <= 4294967296
                                        require mem[_7900] + 32 <= return_data.size
                                        require mem[mem[_7900] + _7900] <= 4294967296 and mem[_7900] + (32 * mem[mem[_7900] + _7900]) + 32 <= return_data.size
                                        mem[_7900 + ceil32(return_data.size)] = mem[mem[_7900] + _7900]
                                        _8489 = mem[_8070 + _7900]
                                        idx = 0
                                        while idx < 32 * _8489:
                                            mem[_7900 + ceil32(return_data.size) + idx + 32] = mem[_8070 + _7900 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8489) + _7900 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7900 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7900 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7900 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7900 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7900 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7901 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7901 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8185 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8314 = mem[_8185]
                                        require mem[_8185] <= 4294967296
                                        require mem[_8185] + 32 <= return_data.size
                                        require mem[mem[_8185] + _8185] <= 4294967296 and mem[_8185] + (32 * mem[mem[_8185] + _8185]) + 32 <= return_data.size
                                        mem[_8185 + ceil32(return_data.size)] = mem[mem[_8185] + _8185]
                                        _8864 = mem[_8314 + _8185]
                                        idx = 0
                                        while idx < 32 * _8864:
                                            mem[_8185 + ceil32(return_data.size) + idx + 32] = mem[_8314 + _8185 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8864) + _8185 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8185 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8185 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8185 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8185 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8185 + ceil32(return_data.size) + 64]
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7509 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7509 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7668 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7822 = mem[_7668]
                                        require mem[_7668] <= 4294967296
                                        require mem[_7668] + 32 <= return_data.size
                                        require mem[mem[_7668] + _7668] <= 4294967296 and mem[_7668] + (32 * mem[mem[_7668] + _7668]) + 32 <= return_data.size
                                        mem[_7668 + ceil32(return_data.size)] = mem[mem[_7668] + _7668]
                                        _8186 = mem[_7822 + _7668]
                                        idx = 0
                                        while idx < 32 * _8186:
                                            mem[_7668 + ceil32(return_data.size) + idx + 32] = mem[_7822 + _7668 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8186) + _7668 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7668 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7668 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7668 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7668 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7668 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7669 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7669 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7904 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8073 = mem[_7904]
                                        require mem[_7904] <= 4294967296
                                        require mem[_7904] + 32 <= return_data.size
                                        require mem[mem[_7904] + _7904] <= 4294967296 and mem[_7904] + (32 * mem[mem[_7904] + _7904]) + 32 <= return_data.size
                                        mem[_7904 + ceil32(return_data.size)] = mem[mem[_7904] + _7904]
                                        _8492 = mem[_8073 + _7904]
                                        idx = 0
                                        while idx < 32 * _8492:
                                            mem[_7904 + ceil32(return_data.size) + idx + 32] = mem[_8073 + _7904 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8492) + _7904 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7904 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7904 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7904 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7904 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7904 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7672 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7672 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7905 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8075 = mem[_7905]
                                        require mem[_7905] <= 4294967296
                                        require mem[_7905] + 32 <= return_data.size
                                        require mem[mem[_7905] + _7905] <= 4294967296 and mem[_7905] + (32 * mem[mem[_7905] + _7905]) + 32 <= return_data.size
                                        mem[_7905 + ceil32(return_data.size)] = mem[mem[_7905] + _7905]
                                        _8493 = mem[_8075 + _7905]
                                        idx = 0
                                        while idx < 32 * _8493:
                                            mem[_7905 + ceil32(return_data.size) + idx + 32] = mem[_8075 + _7905 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8493) + _7905 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7905 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7905 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7905 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7905 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7905 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7906 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7906 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8187 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8318 = mem[_8187]
                                        require mem[_8187] <= 4294967296
                                        require mem[_8187] + 32 <= return_data.size
                                        require mem[mem[_8187] + _8187] <= 4294967296 and mem[_8187] + (32 * mem[mem[_8187] + _8187]) + 32 <= return_data.size
                                        mem[_8187 + ceil32(return_data.size)] = mem[mem[_8187] + _8187]
                                        _8871 = mem[_8318 + _8187]
                                        idx = 0
                                        while idx < 32 * _8871:
                                            mem[_8187 + ceil32(return_data.size) + idx + 32] = mem[_8318 + _8187 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8871) + _8187 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8187 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8187 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8187 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8187 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8187 + ceil32(return_data.size) + 64]
                        else:
                            if not mem[460 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = mem[428 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_5800)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_5799), address(_5800)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if mem[320] <= 0:
                                revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                            if address(_5799) == address(_5800):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7512 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7512 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7675 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7825 = mem[_7675]
                                        require mem[_7675] <= 4294967296
                                        require mem[_7675] + 32 <= return_data.size
                                        require mem[mem[_7675] + _7675] <= 4294967296 and mem[_7675] + (32 * mem[mem[_7675] + _7675]) + 32 <= return_data.size
                                        mem[_7675 + ceil32(return_data.size)] = mem[mem[_7675] + _7675]
                                        _8188 = mem[_7825 + _7675]
                                        idx = 0
                                        while idx < 32 * _8188:
                                            mem[_7675 + ceil32(return_data.size) + idx + 32] = mem[_7825 + _7675 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8188) + _7675 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7675 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7675 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7675 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7675 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7675 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7676 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7676 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7909 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8078 = mem[_7909]
                                        require mem[_7909] <= 4294967296
                                        require mem[_7909] + 32 <= return_data.size
                                        require mem[mem[_7909] + _7909] <= 4294967296 and mem[_7909] + (32 * mem[mem[_7909] + _7909]) + 32 <= return_data.size
                                        mem[_7909 + ceil32(return_data.size)] = mem[mem[_7909] + _7909]
                                        _8496 = mem[_8078 + _7909]
                                        idx = 0
                                        while idx < 32 * _8496:
                                            mem[_7909 + ceil32(return_data.size) + idx + 32] = mem[_8078 + _7909 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8496) + _7909 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7909 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7909 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7909 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7909 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7909 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7679 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7679 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7910 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8080 = mem[_7910]
                                        require mem[_7910] <= 4294967296
                                        require mem[_7910] + 32 <= return_data.size
                                        require mem[mem[_7910] + _7910] <= 4294967296 and mem[_7910] + (32 * mem[mem[_7910] + _7910]) + 32 <= return_data.size
                                        mem[_7910 + ceil32(return_data.size)] = mem[mem[_7910] + _7910]
                                        _8497 = mem[_8080 + _7910]
                                        idx = 0
                                        while idx < 32 * _8497:
                                            mem[_7910 + ceil32(return_data.size) + idx + 32] = mem[_8080 + _7910 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8497) + _7910 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7910 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7910 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7910 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7910 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7910 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7911 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7911 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8189 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8322 = mem[_8189]
                                        require mem[_8189] <= 4294967296
                                        require mem[_8189] + 32 <= return_data.size
                                        require mem[mem[_8189] + _8189] <= 4294967296 and mem[_8189] + (32 * mem[mem[_8189] + _8189]) + 32 <= return_data.size
                                        mem[_8189 + ceil32(return_data.size)] = mem[mem[_8189] + _8189]
                                        _8878 = mem[_8322 + _8189]
                                        idx = 0
                                        while idx < 32 * _8878:
                                            mem[_8189 + ceil32(return_data.size) + idx + 32] = mem[_8322 + _8189 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8878) + _8189 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8189 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8189 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8189 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8189 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8189 + ceil32(return_data.size) + 64]
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7515 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7515 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7682 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7828 = mem[_7682]
                                        require mem[_7682] <= 4294967296
                                        require mem[_7682] + 32 <= return_data.size
                                        require mem[mem[_7682] + _7682] <= 4294967296 and mem[_7682] + (32 * mem[mem[_7682] + _7682]) + 32 <= return_data.size
                                        mem[_7682 + ceil32(return_data.size)] = mem[mem[_7682] + _7682]
                                        _8190 = mem[_7828 + _7682]
                                        idx = 0
                                        while idx < 32 * _8190:
                                            mem[_7682 + ceil32(return_data.size) + idx + 32] = mem[_7828 + _7682 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8190) + _7682 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7682 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7682 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7682 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7682 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7682 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7683 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7683 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7914 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8083 = mem[_7914]
                                        require mem[_7914] <= 4294967296
                                        require mem[_7914] + 32 <= return_data.size
                                        require mem[mem[_7914] + _7914] <= 4294967296 and mem[_7914] + (32 * mem[mem[_7914] + _7914]) + 32 <= return_data.size
                                        mem[_7914 + ceil32(return_data.size)] = mem[mem[_7914] + _7914]
                                        _8500 = mem[_8083 + _7914]
                                        idx = 0
                                        while idx < 32 * _8500:
                                            mem[_7914 + ceil32(return_data.size) + idx + 32] = mem[_8083 + _7914 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8500) + _7914 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7914 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7914 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7914 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7914 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7914 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7686 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7686 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7915 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8085 = mem[_7915]
                                        require mem[_7915] <= 4294967296
                                        require mem[_7915] + 32 <= return_data.size
                                        require mem[mem[_7915] + _7915] <= 4294967296 and mem[_7915] + (32 * mem[mem[_7915] + _7915]) + 32 <= return_data.size
                                        mem[_7915 + ceil32(return_data.size)] = mem[mem[_7915] + _7915]
                                        _8501 = mem[_8085 + _7915]
                                        idx = 0
                                        while idx < 32 * _8501:
                                            mem[_7915 + ceil32(return_data.size) + idx + 32] = mem[_8085 + _7915 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8501) + _7915 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7915 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7915 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7915 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7915 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7915 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7916 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7916 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8191 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8326 = mem[_8191]
                                        require mem[_8191] <= 4294967296
                                        require mem[_8191] + 32 <= return_data.size
                                        require mem[mem[_8191] + _8191] <= 4294967296 and mem[_8191] + (32 * mem[mem[_8191] + _8191]) + 32 <= return_data.size
                                        mem[_8191 + ceil32(return_data.size)] = mem[mem[_8191] + _8191]
                                        _8885 = mem[_8326 + _8191]
                                        idx = 0
                                        while idx < 32 * _8885:
                                            mem[_8191 + ceil32(return_data.size) + idx + 32] = mem[_8326 + _8191 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8885) + _8191 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8191 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8191 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8191 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8191 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8191 + ceil32(return_data.size) + 64]
                else:
                    mem[320] = mem[288]
                    mem[288] = 0
                    if cd[132] >= 100:
                        _5708 = mem[320]
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = address(cd[228])
                        mem[mem[64] + 100] = cd[260]
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 196).length
                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value _5708 wei
                             gas gas_remaining wei
                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5766 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5791 = mem[_5766]
                        require mem[_5766] <= 4294967296
                        require mem[_5766] + 32 <= return_data.size
                        require mem[mem[_5766] + _5766] <= 4294967296 and mem[_5766] + (32 * mem[mem[_5766] + _5766]) + 32 <= return_data.size
                        mem[_5766 + ceil32(return_data.size)] = mem[mem[_5766] + _5766]
                        _5873 = mem[_5791 + _5766]
                        idx = 0
                        while idx < 32 * _5873:
                            mem[_5766 + ceil32(return_data.size) + idx + 32] = mem[_5791 + _5766 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _5873) + _5766 + ceil32(return_data.size) + 32
                        if not mem[s]:
                            s = _5766 + ceil32(return_data.size)
                            continue 
                        require 0 < mem[_5766 + ceil32(return_data.size)]
                        require 0 < mem[s]
                        mem[s + 32] = mem[s + 32] + mem[_5766 + ceil32(return_data.size) + 32]
                        require 1 < mem[_5766 + ceil32(return_data.size)]
                        require 1 < mem[s]
                        mem[s + 64] = mem[s + 64] + mem[_5766 + ceil32(return_data.size) + 64]
                    else:
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _5794 = mem[416]
                        _5795 = mem[448]
                        if mem[428 len 20] == mem[460 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[428 len 20] < mem[460 len 20]:
                            if not mem[428 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = mem[428 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_5795)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_5794), address(_5795)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if mem[320] <= 0:
                                revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                            if address(_5794) == address(_5794):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7494 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7494 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7633 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7807 = mem[_7633]
                                        require mem[_7633] <= 4294967296
                                        require mem[_7633] + 32 <= return_data.size
                                        require mem[mem[_7633] + _7633] <= 4294967296 and mem[_7633] + (32 * mem[mem[_7633] + _7633]) + 32 <= return_data.size
                                        mem[_7633 + ceil32(return_data.size)] = mem[mem[_7633] + _7633]
                                        _8176 = mem[_7807 + _7633]
                                        idx = 0
                                        while idx < 32 * _8176:
                                            mem[_7633 + ceil32(return_data.size) + idx + 32] = mem[_7807 + _7633 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8176) + _7633 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7633 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7633 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7633 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7633 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7633 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7634 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7634 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7879 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8048 = mem[_7879]
                                        require mem[_7879] <= 4294967296
                                        require mem[_7879] + 32 <= return_data.size
                                        require mem[mem[_7879] + _7879] <= 4294967296 and mem[_7879] + (32 * mem[mem[_7879] + _7879]) + 32 <= return_data.size
                                        mem[_7879 + ceil32(return_data.size)] = mem[mem[_7879] + _7879]
                                        _8472 = mem[_8048 + _7879]
                                        idx = 0
                                        while idx < 32 * _8472:
                                            mem[_7879 + ceil32(return_data.size) + idx + 32] = mem[_8048 + _7879 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8472) + _7879 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7879 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7879 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7879 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7879 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7879 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7637 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7637 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7880 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8050 = mem[_7880]
                                        require mem[_7880] <= 4294967296
                                        require mem[_7880] + 32 <= return_data.size
                                        require mem[mem[_7880] + _7880] <= 4294967296 and mem[_7880] + (32 * mem[mem[_7880] + _7880]) + 32 <= return_data.size
                                        mem[_7880 + ceil32(return_data.size)] = mem[mem[_7880] + _7880]
                                        _8473 = mem[_8050 + _7880]
                                        idx = 0
                                        while idx < 32 * _8473:
                                            mem[_7880 + ceil32(return_data.size) + idx + 32] = mem[_8050 + _7880 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8473) + _7880 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7880 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7880 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7880 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7880 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7880 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7881 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7881 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8177 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8298 = mem[_8177]
                                        require mem[_8177] <= 4294967296
                                        require mem[_8177] + 32 <= return_data.size
                                        require mem[mem[_8177] + _8177] <= 4294967296 and mem[_8177] + (32 * mem[mem[_8177] + _8177]) + 32 <= return_data.size
                                        mem[_8177 + ceil32(return_data.size)] = mem[mem[_8177] + _8177]
                                        _8836 = mem[_8298 + _8177]
                                        idx = 0
                                        while idx < 32 * _8836:
                                            mem[_8177 + ceil32(return_data.size) + idx + 32] = mem[_8298 + _8177 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8836) + _8177 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8177 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8177 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8177 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8177 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8177 + ceil32(return_data.size) + 64]
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7497 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7497 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7640 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7810 = mem[_7640]
                                        require mem[_7640] <= 4294967296
                                        require mem[_7640] + 32 <= return_data.size
                                        require mem[mem[_7640] + _7640] <= 4294967296 and mem[_7640] + (32 * mem[mem[_7640] + _7640]) + 32 <= return_data.size
                                        mem[_7640 + ceil32(return_data.size)] = mem[mem[_7640] + _7640]
                                        _8178 = mem[_7810 + _7640]
                                        idx = 0
                                        while idx < 32 * _8178:
                                            mem[_7640 + ceil32(return_data.size) + idx + 32] = mem[_7810 + _7640 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8178) + _7640 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7640 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7640 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7640 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7640 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7640 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7641 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7641 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7884 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8053 = mem[_7884]
                                        require mem[_7884] <= 4294967296
                                        require mem[_7884] + 32 <= return_data.size
                                        require mem[mem[_7884] + _7884] <= 4294967296 and mem[_7884] + (32 * mem[mem[_7884] + _7884]) + 32 <= return_data.size
                                        mem[_7884 + ceil32(return_data.size)] = mem[mem[_7884] + _7884]
                                        _8476 = mem[_8053 + _7884]
                                        idx = 0
                                        while idx < 32 * _8476:
                                            mem[_7884 + ceil32(return_data.size) + idx + 32] = mem[_8053 + _7884 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8476) + _7884 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7884 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7884 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7884 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7884 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7884 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7644 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7644 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7885 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8055 = mem[_7885]
                                        require mem[_7885] <= 4294967296
                                        require mem[_7885] + 32 <= return_data.size
                                        require mem[mem[_7885] + _7885] <= 4294967296 and mem[_7885] + (32 * mem[mem[_7885] + _7885]) + 32 <= return_data.size
                                        mem[_7885 + ceil32(return_data.size)] = mem[mem[_7885] + _7885]
                                        _8477 = mem[_8055 + _7885]
                                        idx = 0
                                        while idx < 32 * _8477:
                                            mem[_7885 + ceil32(return_data.size) + idx + 32] = mem[_8055 + _7885 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8477) + _7885 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7885 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7885 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7885 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7885 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7885 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7886 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7886 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8179 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8302 = mem[_8179]
                                        require mem[_8179] <= 4294967296
                                        require mem[_8179] + 32 <= return_data.size
                                        require mem[mem[_8179] + _8179] <= 4294967296 and mem[_8179] + (32 * mem[mem[_8179] + _8179]) + 32 <= return_data.size
                                        mem[_8179 + ceil32(return_data.size)] = mem[mem[_8179] + _8179]
                                        _8843 = mem[_8302 + _8179]
                                        idx = 0
                                        while idx < 32 * _8843:
                                            mem[_8179 + ceil32(return_data.size) + idx + 32] = mem[_8302 + _8179 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8843) + _8179 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8179 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8179 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8179 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8179 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8179 + ceil32(return_data.size) + 64]
                        else:
                            if not mem[460 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = mem[428 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_5795)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_5794), address(_5795)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if mem[320] <= 0:
                                revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                            if address(_5794) == address(_5795):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7500 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7500 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7647 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7813 = mem[_7647]
                                        require mem[_7647] <= 4294967296
                                        require mem[_7647] + 32 <= return_data.size
                                        require mem[mem[_7647] + _7647] <= 4294967296 and mem[_7647] + (32 * mem[mem[_7647] + _7647]) + 32 <= return_data.size
                                        mem[_7647 + ceil32(return_data.size)] = mem[mem[_7647] + _7647]
                                        _8180 = mem[_7813 + _7647]
                                        idx = 0
                                        while idx < 32 * _8180:
                                            mem[_7647 + ceil32(return_data.size) + idx + 32] = mem[_7813 + _7647 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8180) + _7647 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7647 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7647 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7647 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7647 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7647 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7648 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7648 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7889 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8058 = mem[_7889]
                                        require mem[_7889] <= 4294967296
                                        require mem[_7889] + 32 <= return_data.size
                                        require mem[mem[_7889] + _7889] <= 4294967296 and mem[_7889] + (32 * mem[mem[_7889] + _7889]) + 32 <= return_data.size
                                        mem[_7889 + ceil32(return_data.size)] = mem[mem[_7889] + _7889]
                                        _8480 = mem[_8058 + _7889]
                                        idx = 0
                                        while idx < 32 * _8480:
                                            mem[_7889 + ceil32(return_data.size) + idx + 32] = mem[_8058 + _7889 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8480) + _7889 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7889 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7889 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7889 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7889 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7889 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7651 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7651 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7890 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8060 = mem[_7890]
                                        require mem[_7890] <= 4294967296
                                        require mem[_7890] + 32 <= return_data.size
                                        require mem[mem[_7890] + _7890] <= 4294967296 and mem[_7890] + (32 * mem[mem[_7890] + _7890]) + 32 <= return_data.size
                                        mem[_7890 + ceil32(return_data.size)] = mem[mem[_7890] + _7890]
                                        _8481 = mem[_8060 + _7890]
                                        idx = 0
                                        while idx < 32 * _8481:
                                            mem[_7890 + ceil32(return_data.size) + idx + 32] = mem[_8060 + _7890 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8481) + _7890 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7890 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7890 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7890 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7890 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7890 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7891 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7891 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8181 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8306 = mem[_8181]
                                        require mem[_8181] <= 4294967296
                                        require mem[_8181] + 32 <= return_data.size
                                        require mem[mem[_8181] + _8181] <= 4294967296 and mem[_8181] + (32 * mem[mem[_8181] + _8181]) + 32 <= return_data.size
                                        mem[_8181 + ceil32(return_data.size)] = mem[mem[_8181] + _8181]
                                        _8850 = mem[_8306 + _8181]
                                        idx = 0
                                        while idx < 32 * _8850:
                                            mem[_8181 + ceil32(return_data.size) + idx + 32] = mem[_8306 + _8181 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8850) + _8181 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8181 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8181 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8181 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8181 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8181 + ceil32(return_data.size) + 64]
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7503 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7503 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7654 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7816 = mem[_7654]
                                        require mem[_7654] <= 4294967296
                                        require mem[_7654] + 32 <= return_data.size
                                        require mem[mem[_7654] + _7654] <= 4294967296 and mem[_7654] + (32 * mem[mem[_7654] + _7654]) + 32 <= return_data.size
                                        mem[_7654 + ceil32(return_data.size)] = mem[mem[_7654] + _7654]
                                        _8182 = mem[_7816 + _7654]
                                        idx = 0
                                        while idx < 32 * _8182:
                                            mem[_7654 + ceil32(return_data.size) + idx + 32] = mem[_7816 + _7654 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8182) + _7654 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7654 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7654 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7654 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7654 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7654 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7655 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7655 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7894 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8063 = mem[_7894]
                                        require mem[_7894] <= 4294967296
                                        require mem[_7894] + 32 <= return_data.size
                                        require mem[mem[_7894] + _7894] <= 4294967296 and mem[_7894] + (32 * mem[mem[_7894] + _7894]) + 32 <= return_data.size
                                        mem[_7894 + ceil32(return_data.size)] = mem[mem[_7894] + _7894]
                                        _8484 = mem[_8063 + _7894]
                                        idx = 0
                                        while idx < 32 * _8484:
                                            mem[_7894 + ceil32(return_data.size) + idx + 32] = mem[_8063 + _7894 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8484) + _7894 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7894 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7894 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7894 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7894 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7894 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7658 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7658 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7895 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8065 = mem[_7895]
                                        require mem[_7895] <= 4294967296
                                        require mem[_7895] + 32 <= return_data.size
                                        require mem[mem[_7895] + _7895] <= 4294967296 and mem[_7895] + (32 * mem[mem[_7895] + _7895]) + 32 <= return_data.size
                                        mem[_7895 + ceil32(return_data.size)] = mem[mem[_7895] + _7895]
                                        _8485 = mem[_8065 + _7895]
                                        idx = 0
                                        while idx < 32 * _8485:
                                            mem[_7895 + ceil32(return_data.size) + idx + 32] = mem[_8065 + _7895 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8485) + _7895 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7895 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7895 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7895 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7895 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7895 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7896 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7896 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8183 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8310 = mem[_8183]
                                        require mem[_8183] <= 4294967296
                                        require mem[_8183] + 32 <= return_data.size
                                        require mem[mem[_8183] + _8183] <= 4294967296 and mem[_8183] + (32 * mem[mem[_8183] + _8183]) + 32 <= return_data.size
                                        mem[_8183 + ceil32(return_data.size)] = mem[mem[_8183] + _8183]
                                        _8857 = mem[_8310 + _8183]
                                        idx = 0
                                        while idx < 32 * _8857:
                                            mem[_8183 + ceil32(return_data.size) + idx + 32] = mem[_8310 + _8183 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8857) + _8183 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8183 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8183 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8183 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8183 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8183 + ceil32(return_data.size) + 64]
                s = s
                continue 
            if mem[352] <= 0:
                if not cd[164]:
                    Mask(96, 0, stor0.field_160) = 1
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[s]
                    _5706 = mem[s]
                    mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                    return 32, mem[mem[64] + 32 len (32 * _5706) + 32]
                _5683 = mem[384]
                _5684 = mem[448]
                mem[mem[64] + 4] = address(cd[228])
                require ext_code.size(address(_5684))
                staticcall address(_5684).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[228])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] - _5683 != ext_call.return_data[0] - _5683:
                    revert with 0, 'ds-math-mul-overflow'
                _6109 = mem[448]
                mem[mem[64] + 4] = address(cd[228])
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = ext_call.return_data[0] - _5683 / 100
                require ext_code.size(address(_6109))
                call address(_6109).0x23b872dd with:
                     gas gas_remaining wei
                    args address(cd[228]), address(this.address), ext_call.return_data[0] - _5683 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _6271 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_6271 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[_6271]
                mem[_6271 + 32] = mem[460 len 20]
                require 1 < mem[_6271]
                mem[_6271 + 64] = mem[428 len 20]
                require ext_code.size(mem[460 len 20])
                staticcall mem[460 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < mem[_6271]
                require ext_code.size(mem[_6271 + 44 len 20])
                call mem[_6271 + 44 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_6271 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_6271 + 100] = ext_call.return_data[0]
                mem[_6271 + 132] = 0
                mem[_6271 + 196] = address(cd[228])
                mem[_6271 + 228] = block.timestamp
                mem[_6271 + 164] = 160
                mem[_6271 + 260] = mem[_6271]
                mem[_6271 + 292 len floor32(mem[_6271])] = mem[_6271 + 32 len floor32(mem[_6271])]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(cd[228]), block.timestamp, mem[_6271 + 260 len (32 * mem[_6271]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                Mask(96, 0, stor0.field_160) = 1
                mem[_6271 + 96] = 32
                mem[_6271 + 128] = mem[s]
                _12288 = mem[s]
                mem[_6271 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                return memory
                  from mem[64]
                   len (32 * _12288) + _6271 + -mem[64] + 160
            _5665 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            require ext_code.size(address(_5665))
            staticcall address(_5665).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[228])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - mem[384] < mem[352]:
                revert with 0, 'burn exceeds upper limit'
            if not cd[164]:
                Mask(96, 0, stor0.field_160) = 1
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[s]
                _5844 = mem[s]
                mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                return 32, mem[mem[64] + 32 len (32 * _5844) + 32]
            _5824 = mem[384]
            _5825 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            require ext_code.size(address(_5825))
            staticcall address(_5825).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[228])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - _5824 != ext_call.return_data[0] - _5824:
                revert with 0, 'ds-math-mul-overflow'
            _6298 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = ext_call.return_data[0] - _5824 / 100
            require ext_code.size(address(_6298))
            call address(_6298).0x23b872dd with:
                 gas gas_remaining wei
                args address(cd[228]), address(this.address), ext_call.return_data[0] - _5824 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _6535 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_6535 + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[_6535]
            mem[_6535 + 32] = mem[460 len 20]
            require 1 < mem[_6535]
            mem[_6535 + 64] = mem[428 len 20]
            require ext_code.size(mem[460 len 20])
            staticcall mem[460 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < mem[_6535]
            require ext_code.size(mem[_6535 + 44 len 20])
            call mem[_6535 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_6535 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[_6535 + 100] = ext_call.return_data[0]
            mem[_6535 + 132] = 0
            mem[_6535 + 196] = address(cd[228])
            mem[_6535 + 228] = block.timestamp
            mem[_6535 + 164] = 160
            mem[_6535 + 260] = mem[_6535]
            mem[_6535 + 292 len floor32(mem[_6535])] = mem[_6535 + 32 len floor32(mem[_6535])]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(cd[228]), block.timestamp, mem[_6535 + 260 len (32 * mem[_6535]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            Mask(96, 0, stor0.field_160) = 1
            mem[_6535 + 96] = 32
            mem[_6535 + 128] = mem[s]
            _12291 = mem[s]
            mem[_6535 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return memory
              from mem[64]
               len (32 * _12291) + _6535 + -mem[64] + 160
        mem[480] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[484] = cd[100]
        mem[516] = 64
        mem[548] = ('cd', 196).length
        mem[580 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
        mem[(32 * ('cd', 196).length) + 580] = 0
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[100], Array(len=('cd', 196).length, data=call.data[cd[196] + 36 len floor32(('cd', 196).length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 480
        require return_data.size >= 32
        _18 = mem[480 len 4], Mask(224, 32, cd[100]) >> 32
        require mem[480 len 4], Mask(224, 32, cd[100]) >> 32 <= 4294967296
        require mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 32 <= return_data.size
        require mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480]
        _29 = mem[_18 + 480]
        mem[ceil32(return_data.size) + 512 len floor32(mem[_18 + 480])] = mem[_18 + 512 len floor32(mem[_18 + 480])]
        mem[64] = (32 * _29) + ceil32(return_data.size) + 512
        require 0 < mem[ceil32(return_data.size) + 480]
        _5670 = mem[ceil32(return_data.size) + 512]
        mem[320] = mem[ceil32(return_data.size) + 512]
        mem[352] = 0
        mem[(32 * _29) + ceil32(return_data.size) + 516] = address(cd[228])
        require ext_code.size(address(('cd', 196)[1]))
        staticcall address(('cd', 196)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[228])
        mem[(32 * _29) + ceil32(return_data.size) + 512] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[384] = ext_call.return_data[0]
        s = 96
        while msg.value > 0:
            if mem[288] >= _5670:
                mem[288] = mem[288] - _5670
                if cd[132] >= 100:
                    _11901 = mem[320]
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 68] = address(cd[228])
                    mem[mem[64] + 100] = cd[260]
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 196).length
                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value _11901 wei
                         gas gas_remaining wei
                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12333 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12438 = mem[_12333]
                    require mem[_12333] <= 4294967296
                    require mem[_12333] + 32 <= return_data.size
                    require mem[mem[_12333] + _12333] <= 4294967296 and mem[_12333] + (32 * mem[mem[_12333] + _12333]) + 32 <= return_data.size
                    mem[_12333 + ceil32(return_data.size)] = mem[mem[_12333] + _12333]
                    _12506 = mem[_12438 + _12333]
                    idx = 0
                    while idx < 32 * _12506:
                        mem[_12333 + ceil32(return_data.size) + idx + 32] = mem[_12438 + _12333 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _12506) + _12333 + ceil32(return_data.size) + 32
                    if not mem[s]:
                        s = _12333 + ceil32(return_data.size)
                        continue 
                    require 0 < mem[_12333 + ceil32(return_data.size)]
                    require 0 < mem[s]
                    mem[s + 32] = mem[s + 32] + mem[_12333 + ceil32(return_data.size) + 32]
                    require 1 < mem[_12333 + ceil32(return_data.size)]
                    require 1 < mem[s]
                    mem[s + 64] = mem[s + 64] + mem[_12333 + ceil32(return_data.size) + 64]
                else:
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _12441 = mem[416]
                    _12442 = mem[448]
                    if mem[428 len 20] == mem[460 len 20]:
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[428 len 20] < mem[460 len 20]:
                        if not mem[428 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_12442)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_12441), address(_12442)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_12441) == address(_12441):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13326 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13326 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13466 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13618 = mem[_13466]
                                    require mem[_13466] <= 4294967296
                                    require mem[_13466] + 32 <= return_data.size
                                    require mem[mem[_13466] + _13466] <= 4294967296 and mem[_13466] + (32 * mem[mem[_13466] + _13466]) + 32 <= return_data.size
                                    mem[_13466 + ceil32(return_data.size)] = mem[mem[_13466] + _13466]
                                    _13926 = mem[_13618 + _13466]
                                    idx = 0
                                    while idx < 32 * _13926:
                                        mem[_13466 + ceil32(return_data.size) + idx + 32] = mem[_13618 + _13466 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13926) + _13466 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13466 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13466 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13466 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13466 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13466 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13467 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13467 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13698 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13819 = mem[_13698]
                                    require mem[_13698] <= 4294967296
                                    require mem[_13698] + 32 <= return_data.size
                                    require mem[mem[_13698] + _13698] <= 4294967296 and mem[_13698] + (32 * mem[mem[_13698] + _13698]) + 32 <= return_data.size
                                    mem[_13698 + ceil32(return_data.size)] = mem[mem[_13698] + _13698]
                                    _14080 = mem[_13819 + _13698]
                                    idx = 0
                                    while idx < 32 * _14080:
                                        mem[_13698 + ceil32(return_data.size) + idx + 32] = mem[_13819 + _13698 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14080) + _13698 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13698 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13698 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13698 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13698 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13698 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13470 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13470 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13699 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13821 = mem[_13699]
                                    require mem[_13699] <= 4294967296
                                    require mem[_13699] + 32 <= return_data.size
                                    require mem[mem[_13699] + _13699] <= 4294967296 and mem[_13699] + (32 * mem[mem[_13699] + _13699]) + 32 <= return_data.size
                                    mem[_13699 + ceil32(return_data.size)] = mem[mem[_13699] + _13699]
                                    _14081 = mem[_13821 + _13699]
                                    idx = 0
                                    while idx < 32 * _14081:
                                        mem[_13699 + ceil32(return_data.size) + idx + 32] = mem[_13821 + _13699 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14081) + _13699 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13699 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13699 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13699 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13699 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13699 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13700 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13700 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13927 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13984 = mem[_13927]
                                    require mem[_13927] <= 4294967296
                                    require mem[_13927] + 32 <= return_data.size
                                    require mem[mem[_13927] + _13927] <= 4294967296 and mem[_13927] + (32 * mem[mem[_13927] + _13927]) + 32 <= return_data.size
                                    mem[_13927 + ceil32(return_data.size)] = mem[mem[_13927] + _13927]
                                    _14240 = mem[_13984 + _13927]
                                    idx = 0
                                    while idx < 32 * _14240:
                                        mem[_13927 + ceil32(return_data.size) + idx + 32] = mem[_13984 + _13927 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14240) + _13927 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13927 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13927 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13927 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13927 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13927 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13329 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13329 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13473 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13621 = mem[_13473]
                                    require mem[_13473] <= 4294967296
                                    require mem[_13473] + 32 <= return_data.size
                                    require mem[mem[_13473] + _13473] <= 4294967296 and mem[_13473] + (32 * mem[mem[_13473] + _13473]) + 32 <= return_data.size
                                    mem[_13473 + ceil32(return_data.size)] = mem[mem[_13473] + _13473]
                                    _13928 = mem[_13621 + _13473]
                                    idx = 0
                                    while idx < 32 * _13928:
                                        mem[_13473 + ceil32(return_data.size) + idx + 32] = mem[_13621 + _13473 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13928) + _13473 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13473 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13473 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13473 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13473 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13473 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13474 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13474 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13703 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13824 = mem[_13703]
                                    require mem[_13703] <= 4294967296
                                    require mem[_13703] + 32 <= return_data.size
                                    require mem[mem[_13703] + _13703] <= 4294967296 and mem[_13703] + (32 * mem[mem[_13703] + _13703]) + 32 <= return_data.size
                                    mem[_13703 + ceil32(return_data.size)] = mem[mem[_13703] + _13703]
                                    _14084 = mem[_13824 + _13703]
                                    idx = 0
                                    while idx < 32 * _14084:
                                        mem[_13703 + ceil32(return_data.size) + idx + 32] = mem[_13824 + _13703 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14084) + _13703 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13703 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13703 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13703 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13703 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13703 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13477 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13477 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13704 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13826 = mem[_13704]
                                    require mem[_13704] <= 4294967296
                                    require mem[_13704] + 32 <= return_data.size
                                    require mem[mem[_13704] + _13704] <= 4294967296 and mem[_13704] + (32 * mem[mem[_13704] + _13704]) + 32 <= return_data.size
                                    mem[_13704 + ceil32(return_data.size)] = mem[mem[_13704] + _13704]
                                    _14085 = mem[_13826 + _13704]
                                    idx = 0
                                    while idx < 32 * _14085:
                                        mem[_13704 + ceil32(return_data.size) + idx + 32] = mem[_13826 + _13704 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14085) + _13704 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13704 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13704 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13704 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13704 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13704 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13705 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13705 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13929 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13988 = mem[_13929]
                                    require mem[_13929] <= 4294967296
                                    require mem[_13929] + 32 <= return_data.size
                                    require mem[mem[_13929] + _13929] <= 4294967296 and mem[_13929] + (32 * mem[mem[_13929] + _13929]) + 32 <= return_data.size
                                    mem[_13929 + ceil32(return_data.size)] = mem[mem[_13929] + _13929]
                                    _14247 = mem[_13988 + _13929]
                                    idx = 0
                                    while idx < 32 * _14247:
                                        mem[_13929 + ceil32(return_data.size) + idx + 32] = mem[_13988 + _13929 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14247) + _13929 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13929 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13929 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13929 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13929 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13929 + ceil32(return_data.size) + 64]
                    else:
                        if not mem[460 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_12442)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_12441), address(_12442)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_12441) == address(_12442):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13332 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13332 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13480 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13624 = mem[_13480]
                                    require mem[_13480] <= 4294967296
                                    require mem[_13480] + 32 <= return_data.size
                                    require mem[mem[_13480] + _13480] <= 4294967296 and mem[_13480] + (32 * mem[mem[_13480] + _13480]) + 32 <= return_data.size
                                    mem[_13480 + ceil32(return_data.size)] = mem[mem[_13480] + _13480]
                                    _13930 = mem[_13624 + _13480]
                                    idx = 0
                                    while idx < 32 * _13930:
                                        mem[_13480 + ceil32(return_data.size) + idx + 32] = mem[_13624 + _13480 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13930) + _13480 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13480 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13480 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13480 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13480 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13480 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13481 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13481 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13708 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13829 = mem[_13708]
                                    require mem[_13708] <= 4294967296
                                    require mem[_13708] + 32 <= return_data.size
                                    require mem[mem[_13708] + _13708] <= 4294967296 and mem[_13708] + (32 * mem[mem[_13708] + _13708]) + 32 <= return_data.size
                                    mem[_13708 + ceil32(return_data.size)] = mem[mem[_13708] + _13708]
                                    _14088 = mem[_13829 + _13708]
                                    idx = 0
                                    while idx < 32 * _14088:
                                        mem[_13708 + ceil32(return_data.size) + idx + 32] = mem[_13829 + _13708 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14088) + _13708 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13708 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13708 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13708 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13708 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13708 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13484 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13484 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13709 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13831 = mem[_13709]
                                    require mem[_13709] <= 4294967296
                                    require mem[_13709] + 32 <= return_data.size
                                    require mem[mem[_13709] + _13709] <= 4294967296 and mem[_13709] + (32 * mem[mem[_13709] + _13709]) + 32 <= return_data.size
                                    mem[_13709 + ceil32(return_data.size)] = mem[mem[_13709] + _13709]
                                    _14089 = mem[_13831 + _13709]
                                    idx = 0
                                    while idx < 32 * _14089:
                                        mem[_13709 + ceil32(return_data.size) + idx + 32] = mem[_13831 + _13709 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14089) + _13709 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13709 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13709 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13709 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13709 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13709 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13710 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13710 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13931 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13992 = mem[_13931]
                                    require mem[_13931] <= 4294967296
                                    require mem[_13931] + 32 <= return_data.size
                                    require mem[mem[_13931] + _13931] <= 4294967296 and mem[_13931] + (32 * mem[mem[_13931] + _13931]) + 32 <= return_data.size
                                    mem[_13931 + ceil32(return_data.size)] = mem[mem[_13931] + _13931]
                                    _14254 = mem[_13992 + _13931]
                                    idx = 0
                                    while idx < 32 * _14254:
                                        mem[_13931 + ceil32(return_data.size) + idx + 32] = mem[_13992 + _13931 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14254) + _13931 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13931 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13931 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13931 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13931 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13931 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13335 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13335 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13487 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13627 = mem[_13487]
                                    require mem[_13487] <= 4294967296
                                    require mem[_13487] + 32 <= return_data.size
                                    require mem[mem[_13487] + _13487] <= 4294967296 and mem[_13487] + (32 * mem[mem[_13487] + _13487]) + 32 <= return_data.size
                                    mem[_13487 + ceil32(return_data.size)] = mem[mem[_13487] + _13487]
                                    _13932 = mem[_13627 + _13487]
                                    idx = 0
                                    while idx < 32 * _13932:
                                        mem[_13487 + ceil32(return_data.size) + idx + 32] = mem[_13627 + _13487 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13932) + _13487 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13487 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13487 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13487 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13487 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13487 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13488 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13488 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13713 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13834 = mem[_13713]
                                    require mem[_13713] <= 4294967296
                                    require mem[_13713] + 32 <= return_data.size
                                    require mem[mem[_13713] + _13713] <= 4294967296 and mem[_13713] + (32 * mem[mem[_13713] + _13713]) + 32 <= return_data.size
                                    mem[_13713 + ceil32(return_data.size)] = mem[mem[_13713] + _13713]
                                    _14092 = mem[_13834 + _13713]
                                    idx = 0
                                    while idx < 32 * _14092:
                                        mem[_13713 + ceil32(return_data.size) + idx + 32] = mem[_13834 + _13713 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14092) + _13713 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13713 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13713 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13713 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13713 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13713 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13491 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13491 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13714 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13836 = mem[_13714]
                                    require mem[_13714] <= 4294967296
                                    require mem[_13714] + 32 <= return_data.size
                                    require mem[mem[_13714] + _13714] <= 4294967296 and mem[_13714] + (32 * mem[mem[_13714] + _13714]) + 32 <= return_data.size
                                    mem[_13714 + ceil32(return_data.size)] = mem[mem[_13714] + _13714]
                                    _14093 = mem[_13836 + _13714]
                                    idx = 0
                                    while idx < 32 * _14093:
                                        mem[_13714 + ceil32(return_data.size) + idx + 32] = mem[_13836 + _13714 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14093) + _13714 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13714 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13714 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13714 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13714 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13714 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13715 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13715 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13933 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13996 = mem[_13933]
                                    require mem[_13933] <= 4294967296
                                    require mem[_13933] + 32 <= return_data.size
                                    require mem[mem[_13933] + _13933] <= 4294967296 and mem[_13933] + (32 * mem[mem[_13933] + _13933]) + 32 <= return_data.size
                                    mem[_13933 + ceil32(return_data.size)] = mem[mem[_13933] + _13933]
                                    _14261 = mem[_13996 + _13933]
                                    idx = 0
                                    while idx < 32 * _14261:
                                        mem[_13933 + ceil32(return_data.size) + idx + 32] = mem[_13996 + _13933 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14261) + _13933 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13933 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13933 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13933 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13933 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13933 + ceil32(return_data.size) + 64]
            else:
                mem[320] = mem[288]
                mem[288] = 0
                if cd[132] >= 100:
                    _11896 = mem[320]
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 68] = address(cd[228])
                    mem[mem[64] + 100] = cd[260]
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 196).length
                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value _11896 wei
                         gas gas_remaining wei
                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12331 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12433 = mem[_12331]
                    require mem[_12331] <= 4294967296
                    require mem[_12331] + 32 <= return_data.size
                    require mem[mem[_12331] + _12331] <= 4294967296 and mem[_12331] + (32 * mem[mem[_12331] + _12331]) + 32 <= return_data.size
                    mem[_12331 + ceil32(return_data.size)] = mem[mem[_12331] + _12331]
                    _12503 = mem[_12433 + _12331]
                    idx = 0
                    while idx < 32 * _12503:
                        mem[_12331 + ceil32(return_data.size) + idx + 32] = mem[_12433 + _12331 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _12503) + _12331 + ceil32(return_data.size) + 32
                    if not mem[s]:
                        s = _12331 + ceil32(return_data.size)
                        continue 
                    require 0 < mem[_12331 + ceil32(return_data.size)]
                    require 0 < mem[s]
                    mem[s + 32] = mem[s + 32] + mem[_12331 + ceil32(return_data.size) + 32]
                    require 1 < mem[_12331 + ceil32(return_data.size)]
                    require 1 < mem[s]
                    mem[s + 64] = mem[s + 64] + mem[_12331 + ceil32(return_data.size) + 64]
                else:
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _12436 = mem[416]
                    _12437 = mem[448]
                    if mem[428 len 20] == mem[460 len 20]:
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[428 len 20] < mem[460 len 20]:
                        if not mem[428 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_12437)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_12436), address(_12437)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_12436) == address(_12436):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13314 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13314 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13438 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13606 = mem[_13438]
                                    require mem[_13438] <= 4294967296
                                    require mem[_13438] + 32 <= return_data.size
                                    require mem[mem[_13438] + _13438] <= 4294967296 and mem[_13438] + (32 * mem[mem[_13438] + _13438]) + 32 <= return_data.size
                                    mem[_13438 + ceil32(return_data.size)] = mem[mem[_13438] + _13438]
                                    _13918 = mem[_13606 + _13438]
                                    idx = 0
                                    while idx < 32 * _13918:
                                        mem[_13438 + ceil32(return_data.size) + idx + 32] = mem[_13606 + _13438 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13918) + _13438 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13438 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13438 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13438 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13438 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13438 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13439 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13439 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13678 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13799 = mem[_13678]
                                    require mem[_13678] <= 4294967296
                                    require mem[_13678] + 32 <= return_data.size
                                    require mem[mem[_13678] + _13678] <= 4294967296 and mem[_13678] + (32 * mem[mem[_13678] + _13678]) + 32 <= return_data.size
                                    mem[_13678 + ceil32(return_data.size)] = mem[mem[_13678] + _13678]
                                    _14064 = mem[_13799 + _13678]
                                    idx = 0
                                    while idx < 32 * _14064:
                                        mem[_13678 + ceil32(return_data.size) + idx + 32] = mem[_13799 + _13678 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14064) + _13678 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13678 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13678 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13678 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13678 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13678 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13442 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13442 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13679 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13801 = mem[_13679]
                                    require mem[_13679] <= 4294967296
                                    require mem[_13679] + 32 <= return_data.size
                                    require mem[mem[_13679] + _13679] <= 4294967296 and mem[_13679] + (32 * mem[mem[_13679] + _13679]) + 32 <= return_data.size
                                    mem[_13679 + ceil32(return_data.size)] = mem[mem[_13679] + _13679]
                                    _14065 = mem[_13801 + _13679]
                                    idx = 0
                                    while idx < 32 * _14065:
                                        mem[_13679 + ceil32(return_data.size) + idx + 32] = mem[_13801 + _13679 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14065) + _13679 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13679 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13679 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13679 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13679 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13679 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13680 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13680 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13919 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13968 = mem[_13919]
                                    require mem[_13919] <= 4294967296
                                    require mem[_13919] + 32 <= return_data.size
                                    require mem[mem[_13919] + _13919] <= 4294967296 and mem[_13919] + (32 * mem[mem[_13919] + _13919]) + 32 <= return_data.size
                                    mem[_13919 + ceil32(return_data.size)] = mem[mem[_13919] + _13919]
                                    _14212 = mem[_13968 + _13919]
                                    idx = 0
                                    while idx < 32 * _14212:
                                        mem[_13919 + ceil32(return_data.size) + idx + 32] = mem[_13968 + _13919 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14212) + _13919 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13919 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13919 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13919 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13919 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13919 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13317 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13317 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13445 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13609 = mem[_13445]
                                    require mem[_13445] <= 4294967296
                                    require mem[_13445] + 32 <= return_data.size
                                    require mem[mem[_13445] + _13445] <= 4294967296 and mem[_13445] + (32 * mem[mem[_13445] + _13445]) + 32 <= return_data.size
                                    mem[_13445 + ceil32(return_data.size)] = mem[mem[_13445] + _13445]
                                    _13920 = mem[_13609 + _13445]
                                    idx = 0
                                    while idx < 32 * _13920:
                                        mem[_13445 + ceil32(return_data.size) + idx + 32] = mem[_13609 + _13445 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13920) + _13445 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13445 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13445 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13445 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13445 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13445 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13446 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13446 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13683 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13804 = mem[_13683]
                                    require mem[_13683] <= 4294967296
                                    require mem[_13683] + 32 <= return_data.size
                                    require mem[mem[_13683] + _13683] <= 4294967296 and mem[_13683] + (32 * mem[mem[_13683] + _13683]) + 32 <= return_data.size
                                    mem[_13683 + ceil32(return_data.size)] = mem[mem[_13683] + _13683]
                                    _14068 = mem[_13804 + _13683]
                                    idx = 0
                                    while idx < 32 * _14068:
                                        mem[_13683 + ceil32(return_data.size) + idx + 32] = mem[_13804 + _13683 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14068) + _13683 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13683 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13683 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13683 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13683 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13683 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13449 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13449 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13684 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13806 = mem[_13684]
                                    require mem[_13684] <= 4294967296
                                    require mem[_13684] + 32 <= return_data.size
                                    require mem[mem[_13684] + _13684] <= 4294967296 and mem[_13684] + (32 * mem[mem[_13684] + _13684]) + 32 <= return_data.size
                                    mem[_13684 + ceil32(return_data.size)] = mem[mem[_13684] + _13684]
                                    _14069 = mem[_13806 + _13684]
                                    idx = 0
                                    while idx < 32 * _14069:
                                        mem[_13684 + ceil32(return_data.size) + idx + 32] = mem[_13806 + _13684 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14069) + _13684 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13684 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13684 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13684 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13684 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13684 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13685 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13685 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13921 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13972 = mem[_13921]
                                    require mem[_13921] <= 4294967296
                                    require mem[_13921] + 32 <= return_data.size
                                    require mem[mem[_13921] + _13921] <= 4294967296 and mem[_13921] + (32 * mem[mem[_13921] + _13921]) + 32 <= return_data.size
                                    mem[_13921 + ceil32(return_data.size)] = mem[mem[_13921] + _13921]
                                    _14219 = mem[_13972 + _13921]
                                    idx = 0
                                    while idx < 32 * _14219:
                                        mem[_13921 + ceil32(return_data.size) + idx + 32] = mem[_13972 + _13921 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14219) + _13921 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13921 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13921 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13921 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13921 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13921 + ceil32(return_data.size) + 64]
                    else:
                        if not mem[460 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_12437)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_12436), address(_12437)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_12436) == address(_12437):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13320 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13320 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13452 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13612 = mem[_13452]
                                    require mem[_13452] <= 4294967296
                                    require mem[_13452] + 32 <= return_data.size
                                    require mem[mem[_13452] + _13452] <= 4294967296 and mem[_13452] + (32 * mem[mem[_13452] + _13452]) + 32 <= return_data.size
                                    mem[_13452 + ceil32(return_data.size)] = mem[mem[_13452] + _13452]
                                    _13922 = mem[_13612 + _13452]
                                    idx = 0
                                    while idx < 32 * _13922:
                                        mem[_13452 + ceil32(return_data.size) + idx + 32] = mem[_13612 + _13452 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13922) + _13452 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13452 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13452 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13452 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13452 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13452 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13453 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13453 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13688 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13809 = mem[_13688]
                                    require mem[_13688] <= 4294967296
                                    require mem[_13688] + 32 <= return_data.size
                                    require mem[mem[_13688] + _13688] <= 4294967296 and mem[_13688] + (32 * mem[mem[_13688] + _13688]) + 32 <= return_data.size
                                    mem[_13688 + ceil32(return_data.size)] = mem[mem[_13688] + _13688]
                                    _14072 = mem[_13809 + _13688]
                                    idx = 0
                                    while idx < 32 * _14072:
                                        mem[_13688 + ceil32(return_data.size) + idx + 32] = mem[_13809 + _13688 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14072) + _13688 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13688 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13688 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13688 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13688 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13688 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13456 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13456 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13689 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13811 = mem[_13689]
                                    require mem[_13689] <= 4294967296
                                    require mem[_13689] + 32 <= return_data.size
                                    require mem[mem[_13689] + _13689] <= 4294967296 and mem[_13689] + (32 * mem[mem[_13689] + _13689]) + 32 <= return_data.size
                                    mem[_13689 + ceil32(return_data.size)] = mem[mem[_13689] + _13689]
                                    _14073 = mem[_13811 + _13689]
                                    idx = 0
                                    while idx < 32 * _14073:
                                        mem[_13689 + ceil32(return_data.size) + idx + 32] = mem[_13811 + _13689 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14073) + _13689 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13689 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13689 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13689 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13689 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13689 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13690 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13690 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13923 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13976 = mem[_13923]
                                    require mem[_13923] <= 4294967296
                                    require mem[_13923] + 32 <= return_data.size
                                    require mem[mem[_13923] + _13923] <= 4294967296 and mem[_13923] + (32 * mem[mem[_13923] + _13923]) + 32 <= return_data.size
                                    mem[_13923 + ceil32(return_data.size)] = mem[mem[_13923] + _13923]
                                    _14226 = mem[_13976 + _13923]
                                    idx = 0
                                    while idx < 32 * _14226:
                                        mem[_13923 + ceil32(return_data.size) + idx + 32] = mem[_13976 + _13923 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14226) + _13923 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13923 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13923 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13923 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13923 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13923 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13323 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13323 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13459 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13615 = mem[_13459]
                                    require mem[_13459] <= 4294967296
                                    require mem[_13459] + 32 <= return_data.size
                                    require mem[mem[_13459] + _13459] <= 4294967296 and mem[_13459] + (32 * mem[mem[_13459] + _13459]) + 32 <= return_data.size
                                    mem[_13459 + ceil32(return_data.size)] = mem[mem[_13459] + _13459]
                                    _13924 = mem[_13615 + _13459]
                                    idx = 0
                                    while idx < 32 * _13924:
                                        mem[_13459 + ceil32(return_data.size) + idx + 32] = mem[_13615 + _13459 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13924) + _13459 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13459 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13459 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13459 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13459 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13459 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13460 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13460 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13693 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13814 = mem[_13693]
                                    require mem[_13693] <= 4294967296
                                    require mem[_13693] + 32 <= return_data.size
                                    require mem[mem[_13693] + _13693] <= 4294967296 and mem[_13693] + (32 * mem[mem[_13693] + _13693]) + 32 <= return_data.size
                                    mem[_13693 + ceil32(return_data.size)] = mem[mem[_13693] + _13693]
                                    _14076 = mem[_13814 + _13693]
                                    idx = 0
                                    while idx < 32 * _14076:
                                        mem[_13693 + ceil32(return_data.size) + idx + 32] = mem[_13814 + _13693 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14076) + _13693 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13693 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13693 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13693 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13693 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13693 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13463 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13463 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13694 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13816 = mem[_13694]
                                    require mem[_13694] <= 4294967296
                                    require mem[_13694] + 32 <= return_data.size
                                    require mem[mem[_13694] + _13694] <= 4294967296 and mem[_13694] + (32 * mem[mem[_13694] + _13694]) + 32 <= return_data.size
                                    mem[_13694 + ceil32(return_data.size)] = mem[mem[_13694] + _13694]
                                    _14077 = mem[_13816 + _13694]
                                    idx = 0
                                    while idx < 32 * _14077:
                                        mem[_13694 + ceil32(return_data.size) + idx + 32] = mem[_13816 + _13694 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14077) + _13694 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13694 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13694 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13694 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13694 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13694 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13695 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13695 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13925 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13980 = mem[_13925]
                                    require mem[_13925] <= 4294967296
                                    require mem[_13925] + 32 <= return_data.size
                                    require mem[mem[_13925] + _13925] <= 4294967296 and mem[_13925] + (32 * mem[mem[_13925] + _13925]) + 32 <= return_data.size
                                    mem[_13925 + ceil32(return_data.size)] = mem[mem[_13925] + _13925]
                                    _14233 = mem[_13980 + _13925]
                                    idx = 0
                                    while idx < 32 * _14233:
                                        mem[_13925 + ceil32(return_data.size) + idx + 32] = mem[_13980 + _13925 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14233) + _13925 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13925 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13925 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13925 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13925 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13925 + ceil32(return_data.size) + 64]
            s = s
            continue 
        if mem[352] <= 0:
            if not cd[164]:
                Mask(96, 0, stor0.field_160) = 1
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[s]
                _11894 = mem[s]
                mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                return 32, mem[mem[64] + 32 len (32 * _11894) + 32]
            _11676 = mem[384]
            _11677 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            require ext_code.size(address(_11677))
            staticcall address(_11677).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[228])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - _11676 != ext_call.return_data[0] - _11676:
                revert with 0, 'ds-math-mul-overflow'
            _12616 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = ext_call.return_data[0] - _11676 / 100
            require ext_code.size(address(_12616))
            call address(_12616).0x23b872dd with:
                 gas gas_remaining wei
                args address(cd[228]), address(this.address), ext_call.return_data[0] - _11676 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _12715 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_12715 + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[_12715]
            mem[_12715 + 32] = mem[460 len 20]
            require 1 < mem[_12715]
            mem[_12715 + 64] = mem[428 len 20]
            require ext_code.size(mem[460 len 20])
            staticcall mem[460 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < mem[_12715]
            require ext_code.size(mem[_12715 + 44 len 20])
            call mem[_12715 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_12715 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[_12715 + 100] = ext_call.return_data[0]
            mem[_12715 + 132] = 0
            mem[_12715 + 196] = address(cd[228])
            mem[_12715 + 228] = block.timestamp
            mem[_12715 + 164] = 160
            mem[_12715 + 260] = mem[_12715]
            mem[_12715 + 292 len floor32(mem[_12715])] = mem[_12715 + 32 len floor32(mem[_12715])]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(cd[228]), block.timestamp, mem[_12715 + 260 len (32 * mem[_12715]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            Mask(96, 0, stor0.field_160) = 1
            mem[_12715 + 96] = 32
            mem[_12715 + 128] = mem[s]
            _16074 = mem[s]
            mem[_12715 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return memory
              from mem[64]
               len (32 * _16074) + _12715 + -mem[64] + 160
        _11525 = mem[448]
        mem[mem[64] + 4] = address(cd[228])
        require ext_code.size(address(_11525))
        staticcall address(_11525).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[228])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - mem[384] < mem[352]:
            revert with 0, 'burn exceeds upper limit'
        if not cd[164]:
            Mask(96, 0, stor0.field_160) = 1
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[s]
            _12489 = mem[s]
            mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return 32, mem[mem[64] + 32 len (32 * _12489) + 32]
        _12467 = mem[384]
        _12468 = mem[448]
        mem[mem[64] + 4] = address(cd[228])
        require ext_code.size(address(_12468))
        staticcall address(_12468).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[228])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - _12467 != ext_call.return_data[0] - _12467:
            revert with 0, 'ds-math-mul-overflow'
        _12730 = mem[448]
        mem[mem[64] + 4] = address(cd[228])
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = ext_call.return_data[0] - _12467 / 100
        require ext_code.size(address(_12730))
        call address(_12730).0x23b872dd with:
             gas gas_remaining wei
            args address(cd[228]), address(this.address), ext_call.return_data[0] - _12467 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _12850 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_12850 + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[_12850]
        mem[_12850 + 32] = mem[460 len 20]
        require 1 < mem[_12850]
        mem[_12850 + 64] = mem[428 len 20]
        require ext_code.size(mem[460 len 20])
        staticcall mem[460 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < mem[_12850]
        require ext_code.size(mem[_12850 + 44 len 20])
        call mem[_12850 + 44 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_12850 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[_12850 + 100] = ext_call.return_data[0]
        mem[_12850 + 132] = 0
        mem[_12850 + 196] = address(cd[228])
        mem[_12850 + 228] = block.timestamp
        mem[_12850 + 164] = 160
        mem[_12850 + 260] = mem[_12850]
        mem[_12850 + 292 len floor32(mem[_12850])] = mem[_12850 + 32 len floor32(mem[_12850])]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(cd[228]), block.timestamp, mem[_12850 + 260 len (32 * mem[_12850]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        Mask(96, 0, stor0.field_160) = 1
        mem[_12850 + 96] = 32
        mem[_12850 + 128] = mem[s]
        _16077 = mem[s]
        mem[_12850 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
        return memory
          from mem[64]
           len (32 * _16077) + _12850 + -mem[64] + 160
    require ext_code.size(address(stor3.field_8))
    staticcall address(stor3.field_8).0xe83c4148 with:
            gas gas_remaining wei
           args msg.sender
    mem[480 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > block.timestamp:
        if cd[100] <= 0:
            mem[352] = 0
            mem[484] = address(cd[228])
            require ext_code.size(address(('cd', 196)[1]))
            staticcall address(('cd', 196)[1]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[228])
            mem[480] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[384] = ext_call.return_data[0]
            s = 96
            while msg.value > 0:
                if mem[288] >= cd[36]:
                    mem[288] = mem[288] - cd[36]
                    if cd[132] >= 100:
                        _5727 = mem[320]
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = address(cd[228])
                        mem[mem[64] + 100] = cd[260]
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 196).length
                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value _5727 wei
                             gas gas_remaining wei
                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5778 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5807 = mem[_5778]
                        require mem[_5778] <= 4294967296
                        require mem[_5778] + 32 <= return_data.size
                        require mem[mem[_5778] + _5778] <= 4294967296 and mem[_5778] + (32 * mem[mem[_5778] + _5778]) + 32 <= return_data.size
                        mem[_5778 + ceil32(return_data.size)] = mem[mem[_5778] + _5778]
                        _5887 = mem[_5807 + _5778]
                        idx = 0
                        while idx < 32 * _5887:
                            mem[_5778 + ceil32(return_data.size) + idx + 32] = mem[_5807 + _5778 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _5887) + _5778 + ceil32(return_data.size) + 32
                        if not mem[s]:
                            s = _5778 + ceil32(return_data.size)
                            continue 
                        require 0 < mem[_5778 + ceil32(return_data.size)]
                        require 0 < mem[s]
                        mem[s + 32] = mem[s + 32] + mem[_5778 + ceil32(return_data.size) + 32]
                        require 1 < mem[_5778 + ceil32(return_data.size)]
                        require 1 < mem[s]
                        mem[s + 64] = mem[s + 64] + mem[_5778 + ceil32(return_data.size) + 64]
                    else:
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _5810 = mem[416]
                        _5811 = mem[448]
                        if mem[428 len 20] == mem[460 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[428 len 20] < mem[460 len 20]:
                            if not mem[428 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = mem[428 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_5811)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_5810), address(_5811)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if mem[320] <= 0:
                                revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                            if address(_5810) == address(_5810):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7537 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7537 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7719 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7843 = mem[_7719]
                                        require mem[_7719] <= 4294967296
                                        require mem[_7719] + 32 <= return_data.size
                                        require mem[mem[_7719] + _7719] <= 4294967296 and mem[_7719] + (32 * mem[mem[_7719] + _7719]) + 32 <= return_data.size
                                        mem[_7719 + ceil32(return_data.size)] = mem[mem[_7719] + _7719]
                                        _8224 = mem[_7843 + _7719]
                                        idx = 0
                                        while idx < 32 * _8224:
                                            mem[_7719 + ceil32(return_data.size) + idx + 32] = mem[_7843 + _7719 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8224) + _7719 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7719 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7719 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7719 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7719 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7719 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7720 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7720 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7955 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8111 = mem[_7955]
                                        require mem[_7955] <= 4294967296
                                        require mem[_7955] + 32 <= return_data.size
                                        require mem[mem[_7955] + _7955] <= 4294967296 and mem[_7955] + (32 * mem[mem[_7955] + _7955]) + 32 <= return_data.size
                                        mem[_7955 + ceil32(return_data.size)] = mem[mem[_7955] + _7955]
                                        _8536 = mem[_8111 + _7955]
                                        idx = 0
                                        while idx < 32 * _8536:
                                            mem[_7955 + ceil32(return_data.size) + idx + 32] = mem[_8111 + _7955 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8536) + _7955 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7955 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7955 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7955 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7955 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7955 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7723 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7723 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7956 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8113 = mem[_7956]
                                        require mem[_7956] <= 4294967296
                                        require mem[_7956] + 32 <= return_data.size
                                        require mem[mem[_7956] + _7956] <= 4294967296 and mem[_7956] + (32 * mem[mem[_7956] + _7956]) + 32 <= return_data.size
                                        mem[_7956 + ceil32(return_data.size)] = mem[mem[_7956] + _7956]
                                        _8537 = mem[_8113 + _7956]
                                        idx = 0
                                        while idx < 32 * _8537:
                                            mem[_7956 + ceil32(return_data.size) + idx + 32] = mem[_8113 + _7956 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8537) + _7956 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7956 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7956 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7956 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7956 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7956 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7957 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7957 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8225 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8372 = mem[_8225]
                                        require mem[_8225] <= 4294967296
                                        require mem[_8225] + 32 <= return_data.size
                                        require mem[mem[_8225] + _8225] <= 4294967296 and mem[_8225] + (32 * mem[mem[_8225] + _8225]) + 32 <= return_data.size
                                        mem[_8225 + ceil32(return_data.size)] = mem[mem[_8225] + _8225]
                                        _8944 = mem[_8372 + _8225]
                                        idx = 0
                                        while idx < 32 * _8944:
                                            mem[_8225 + ceil32(return_data.size) + idx + 32] = mem[_8372 + _8225 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8944) + _8225 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8225 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8225 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8225 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8225 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8225 + ceil32(return_data.size) + 64]
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7540 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7540 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7726 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7846 = mem[_7726]
                                        require mem[_7726] <= 4294967296
                                        require mem[_7726] + 32 <= return_data.size
                                        require mem[mem[_7726] + _7726] <= 4294967296 and mem[_7726] + (32 * mem[mem[_7726] + _7726]) + 32 <= return_data.size
                                        mem[_7726 + ceil32(return_data.size)] = mem[mem[_7726] + _7726]
                                        _8226 = mem[_7846 + _7726]
                                        idx = 0
                                        while idx < 32 * _8226:
                                            mem[_7726 + ceil32(return_data.size) + idx + 32] = mem[_7846 + _7726 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8226) + _7726 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7726 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7726 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7726 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7726 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7726 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7727 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7727 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7960 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8116 = mem[_7960]
                                        require mem[_7960] <= 4294967296
                                        require mem[_7960] + 32 <= return_data.size
                                        require mem[mem[_7960] + _7960] <= 4294967296 and mem[_7960] + (32 * mem[mem[_7960] + _7960]) + 32 <= return_data.size
                                        mem[_7960 + ceil32(return_data.size)] = mem[mem[_7960] + _7960]
                                        _8540 = mem[_8116 + _7960]
                                        idx = 0
                                        while idx < 32 * _8540:
                                            mem[_7960 + ceil32(return_data.size) + idx + 32] = mem[_8116 + _7960 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8540) + _7960 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7960 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7960 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7960 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7960 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7960 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7730 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7730 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7961 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8118 = mem[_7961]
                                        require mem[_7961] <= 4294967296
                                        require mem[_7961] + 32 <= return_data.size
                                        require mem[mem[_7961] + _7961] <= 4294967296 and mem[_7961] + (32 * mem[mem[_7961] + _7961]) + 32 <= return_data.size
                                        mem[_7961 + ceil32(return_data.size)] = mem[mem[_7961] + _7961]
                                        _8541 = mem[_8118 + _7961]
                                        idx = 0
                                        while idx < 32 * _8541:
                                            mem[_7961 + ceil32(return_data.size) + idx + 32] = mem[_8118 + _7961 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8541) + _7961 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7961 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7961 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7961 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7961 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7961 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7962 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7962 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8227 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8376 = mem[_8227]
                                        require mem[_8227] <= 4294967296
                                        require mem[_8227] + 32 <= return_data.size
                                        require mem[mem[_8227] + _8227] <= 4294967296 and mem[_8227] + (32 * mem[mem[_8227] + _8227]) + 32 <= return_data.size
                                        mem[_8227 + ceil32(return_data.size)] = mem[mem[_8227] + _8227]
                                        _8951 = mem[_8376 + _8227]
                                        idx = 0
                                        while idx < 32 * _8951:
                                            mem[_8227 + ceil32(return_data.size) + idx + 32] = mem[_8376 + _8227 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8951) + _8227 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8227 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8227 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8227 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8227 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8227 + ceil32(return_data.size) + 64]
                        else:
                            if not mem[460 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = mem[428 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_5811)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_5810), address(_5811)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if mem[320] <= 0:
                                revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                            if address(_5810) == address(_5811):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7543 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7543 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7733 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7849 = mem[_7733]
                                        require mem[_7733] <= 4294967296
                                        require mem[_7733] + 32 <= return_data.size
                                        require mem[mem[_7733] + _7733] <= 4294967296 and mem[_7733] + (32 * mem[mem[_7733] + _7733]) + 32 <= return_data.size
                                        mem[_7733 + ceil32(return_data.size)] = mem[mem[_7733] + _7733]
                                        _8228 = mem[_7849 + _7733]
                                        idx = 0
                                        while idx < 32 * _8228:
                                            mem[_7733 + ceil32(return_data.size) + idx + 32] = mem[_7849 + _7733 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8228) + _7733 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7733 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7733 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7733 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7733 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7733 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7734 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7734 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7965 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8121 = mem[_7965]
                                        require mem[_7965] <= 4294967296
                                        require mem[_7965] + 32 <= return_data.size
                                        require mem[mem[_7965] + _7965] <= 4294967296 and mem[_7965] + (32 * mem[mem[_7965] + _7965]) + 32 <= return_data.size
                                        mem[_7965 + ceil32(return_data.size)] = mem[mem[_7965] + _7965]
                                        _8544 = mem[_8121 + _7965]
                                        idx = 0
                                        while idx < 32 * _8544:
                                            mem[_7965 + ceil32(return_data.size) + idx + 32] = mem[_8121 + _7965 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8544) + _7965 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7965 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7965 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7965 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7965 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7965 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7737 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7737 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7966 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8123 = mem[_7966]
                                        require mem[_7966] <= 4294967296
                                        require mem[_7966] + 32 <= return_data.size
                                        require mem[mem[_7966] + _7966] <= 4294967296 and mem[_7966] + (32 * mem[mem[_7966] + _7966]) + 32 <= return_data.size
                                        mem[_7966 + ceil32(return_data.size)] = mem[mem[_7966] + _7966]
                                        _8545 = mem[_8123 + _7966]
                                        idx = 0
                                        while idx < 32 * _8545:
                                            mem[_7966 + ceil32(return_data.size) + idx + 32] = mem[_8123 + _7966 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8545) + _7966 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7966 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7966 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7966 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7966 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7966 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7967 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7967 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8229 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8380 = mem[_8229]
                                        require mem[_8229] <= 4294967296
                                        require mem[_8229] + 32 <= return_data.size
                                        require mem[mem[_8229] + _8229] <= 4294967296 and mem[_8229] + (32 * mem[mem[_8229] + _8229]) + 32 <= return_data.size
                                        mem[_8229 + ceil32(return_data.size)] = mem[mem[_8229] + _8229]
                                        _8958 = mem[_8380 + _8229]
                                        idx = 0
                                        while idx < 32 * _8958:
                                            mem[_8229 + ceil32(return_data.size) + idx + 32] = mem[_8380 + _8229 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8958) + _8229 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8229 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8229 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8229 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8229 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8229 + ceil32(return_data.size) + 64]
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7546 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7546 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7740 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7852 = mem[_7740]
                                        require mem[_7740] <= 4294967296
                                        require mem[_7740] + 32 <= return_data.size
                                        require mem[mem[_7740] + _7740] <= 4294967296 and mem[_7740] + (32 * mem[mem[_7740] + _7740]) + 32 <= return_data.size
                                        mem[_7740 + ceil32(return_data.size)] = mem[mem[_7740] + _7740]
                                        _8230 = mem[_7852 + _7740]
                                        idx = 0
                                        while idx < 32 * _8230:
                                            mem[_7740 + ceil32(return_data.size) + idx + 32] = mem[_7852 + _7740 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8230) + _7740 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7740 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7740 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7740 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7740 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7740 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7741 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7741 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7970 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8126 = mem[_7970]
                                        require mem[_7970] <= 4294967296
                                        require mem[_7970] + 32 <= return_data.size
                                        require mem[mem[_7970] + _7970] <= 4294967296 and mem[_7970] + (32 * mem[mem[_7970] + _7970]) + 32 <= return_data.size
                                        mem[_7970 + ceil32(return_data.size)] = mem[mem[_7970] + _7970]
                                        _8548 = mem[_8126 + _7970]
                                        idx = 0
                                        while idx < 32 * _8548:
                                            mem[_7970 + ceil32(return_data.size) + idx + 32] = mem[_8126 + _7970 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8548) + _7970 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7970 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7970 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7970 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7970 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7970 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7744 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7744 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7971 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8128 = mem[_7971]
                                        require mem[_7971] <= 4294967296
                                        require mem[_7971] + 32 <= return_data.size
                                        require mem[mem[_7971] + _7971] <= 4294967296 and mem[_7971] + (32 * mem[mem[_7971] + _7971]) + 32 <= return_data.size
                                        mem[_7971 + ceil32(return_data.size)] = mem[mem[_7971] + _7971]
                                        _8549 = mem[_8128 + _7971]
                                        idx = 0
                                        while idx < 32 * _8549:
                                            mem[_7971 + ceil32(return_data.size) + idx + 32] = mem[_8128 + _7971 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8549) + _7971 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7971 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7971 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7971 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7971 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7971 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7972 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7972 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8231 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8384 = mem[_8231]
                                        require mem[_8231] <= 4294967296
                                        require mem[_8231] + 32 <= return_data.size
                                        require mem[mem[_8231] + _8231] <= 4294967296 and mem[_8231] + (32 * mem[mem[_8231] + _8231]) + 32 <= return_data.size
                                        mem[_8231 + ceil32(return_data.size)] = mem[mem[_8231] + _8231]
                                        _8965 = mem[_8384 + _8231]
                                        idx = 0
                                        while idx < 32 * _8965:
                                            mem[_8231 + ceil32(return_data.size) + idx + 32] = mem[_8384 + _8231 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8965) + _8231 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8231 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8231 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8231 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8231 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8231 + ceil32(return_data.size) + 64]
                else:
                    mem[320] = mem[288]
                    mem[288] = 0
                    if cd[132] >= 100:
                        _5722 = mem[320]
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 68] = address(cd[228])
                        mem[mem[64] + 100] = cd[260]
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 196).length
                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value _5722 wei
                             gas gas_remaining wei
                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5776 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5802 = mem[_5776]
                        require mem[_5776] <= 4294967296
                        require mem[_5776] + 32 <= return_data.size
                        require mem[mem[_5776] + _5776] <= 4294967296 and mem[_5776] + (32 * mem[mem[_5776] + _5776]) + 32 <= return_data.size
                        mem[_5776 + ceil32(return_data.size)] = mem[mem[_5776] + _5776]
                        _5884 = mem[_5802 + _5776]
                        idx = 0
                        while idx < 32 * _5884:
                            mem[_5776 + ceil32(return_data.size) + idx + 32] = mem[_5802 + _5776 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[64] = (32 * _5884) + _5776 + ceil32(return_data.size) + 32
                        if not mem[s]:
                            s = _5776 + ceil32(return_data.size)
                            continue 
                        require 0 < mem[_5776 + ceil32(return_data.size)]
                        require 0 < mem[s]
                        mem[s + 32] = mem[s + 32] + mem[_5776 + ceil32(return_data.size) + 32]
                        require 1 < mem[_5776 + ceil32(return_data.size)]
                        require 1 < mem[s]
                        mem[s + 64] = mem[s + 64] + mem[_5776 + ceil32(return_data.size) + 64]
                    else:
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _5805 = mem[416]
                        _5806 = mem[448]
                        if mem[428 len 20] == mem[460 len 20]:
                            revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                        if mem[428 len 20] < mem[460 len 20]:
                            if not mem[428 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = mem[428 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_5806)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_5805), address(_5806)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if mem[320] <= 0:
                                revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                            if address(_5805) == address(_5805):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7525 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7525 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7691 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7831 = mem[_7691]
                                        require mem[_7691] <= 4294967296
                                        require mem[_7691] + 32 <= return_data.size
                                        require mem[mem[_7691] + _7691] <= 4294967296 and mem[_7691] + (32 * mem[mem[_7691] + _7691]) + 32 <= return_data.size
                                        mem[_7691 + ceil32(return_data.size)] = mem[mem[_7691] + _7691]
                                        _8216 = mem[_7831 + _7691]
                                        idx = 0
                                        while idx < 32 * _8216:
                                            mem[_7691 + ceil32(return_data.size) + idx + 32] = mem[_7831 + _7691 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8216) + _7691 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7691 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7691 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7691 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7691 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7691 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7692 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7692 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7935 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8091 = mem[_7935]
                                        require mem[_7935] <= 4294967296
                                        require mem[_7935] + 32 <= return_data.size
                                        require mem[mem[_7935] + _7935] <= 4294967296 and mem[_7935] + (32 * mem[mem[_7935] + _7935]) + 32 <= return_data.size
                                        mem[_7935 + ceil32(return_data.size)] = mem[mem[_7935] + _7935]
                                        _8520 = mem[_8091 + _7935]
                                        idx = 0
                                        while idx < 32 * _8520:
                                            mem[_7935 + ceil32(return_data.size) + idx + 32] = mem[_8091 + _7935 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8520) + _7935 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7935 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7935 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7935 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7935 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7935 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7695 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7695 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7936 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8093 = mem[_7936]
                                        require mem[_7936] <= 4294967296
                                        require mem[_7936] + 32 <= return_data.size
                                        require mem[mem[_7936] + _7936] <= 4294967296 and mem[_7936] + (32 * mem[mem[_7936] + _7936]) + 32 <= return_data.size
                                        mem[_7936 + ceil32(return_data.size)] = mem[mem[_7936] + _7936]
                                        _8521 = mem[_8093 + _7936]
                                        idx = 0
                                        while idx < 32 * _8521:
                                            mem[_7936 + ceil32(return_data.size) + idx + 32] = mem[_8093 + _7936 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8521) + _7936 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7936 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7936 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7936 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7936 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7936 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7937 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7937 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8217 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8356 = mem[_8217]
                                        require mem[_8217] <= 4294967296
                                        require mem[_8217] + 32 <= return_data.size
                                        require mem[mem[_8217] + _8217] <= 4294967296 and mem[_8217] + (32 * mem[mem[_8217] + _8217]) + 32 <= return_data.size
                                        mem[_8217 + ceil32(return_data.size)] = mem[mem[_8217] + _8217]
                                        _8916 = mem[_8356 + _8217]
                                        idx = 0
                                        while idx < 32 * _8916:
                                            mem[_8217 + ceil32(return_data.size) + idx + 32] = mem[_8356 + _8217 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8916) + _8217 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8217 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8217 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8217 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8217 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8217 + ceil32(return_data.size) + 64]
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7528 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7528 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7698 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7834 = mem[_7698]
                                        require mem[_7698] <= 4294967296
                                        require mem[_7698] + 32 <= return_data.size
                                        require mem[mem[_7698] + _7698] <= 4294967296 and mem[_7698] + (32 * mem[mem[_7698] + _7698]) + 32 <= return_data.size
                                        mem[_7698 + ceil32(return_data.size)] = mem[mem[_7698] + _7698]
                                        _8218 = mem[_7834 + _7698]
                                        idx = 0
                                        while idx < 32 * _8218:
                                            mem[_7698 + ceil32(return_data.size) + idx + 32] = mem[_7834 + _7698 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8218) + _7698 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7698 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7698 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7698 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7698 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7698 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7699 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7699 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7940 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8096 = mem[_7940]
                                        require mem[_7940] <= 4294967296
                                        require mem[_7940] + 32 <= return_data.size
                                        require mem[mem[_7940] + _7940] <= 4294967296 and mem[_7940] + (32 * mem[mem[_7940] + _7940]) + 32 <= return_data.size
                                        mem[_7940 + ceil32(return_data.size)] = mem[mem[_7940] + _7940]
                                        _8524 = mem[_8096 + _7940]
                                        idx = 0
                                        while idx < 32 * _8524:
                                            mem[_7940 + ceil32(return_data.size) + idx + 32] = mem[_8096 + _7940 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8524) + _7940 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7940 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7940 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7940 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7940 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7940 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7702 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7702 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7941 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8098 = mem[_7941]
                                        require mem[_7941] <= 4294967296
                                        require mem[_7941] + 32 <= return_data.size
                                        require mem[mem[_7941] + _7941] <= 4294967296 and mem[_7941] + (32 * mem[mem[_7941] + _7941]) + 32 <= return_data.size
                                        mem[_7941 + ceil32(return_data.size)] = mem[mem[_7941] + _7941]
                                        _8525 = mem[_8098 + _7941]
                                        idx = 0
                                        while idx < 32 * _8525:
                                            mem[_7941 + ceil32(return_data.size) + idx + 32] = mem[_8098 + _7941 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8525) + _7941 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7941 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7941 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7941 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7941 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7941 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7942 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7942 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8219 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8360 = mem[_8219]
                                        require mem[_8219] <= 4294967296
                                        require mem[_8219] + 32 <= return_data.size
                                        require mem[mem[_8219] + _8219] <= 4294967296 and mem[_8219] + (32 * mem[mem[_8219] + _8219]) + 32 <= return_data.size
                                        mem[_8219 + ceil32(return_data.size)] = mem[mem[_8219] + _8219]
                                        _8923 = mem[_8360 + _8219]
                                        idx = 0
                                        while idx < 32 * _8923:
                                            mem[_8219 + ceil32(return_data.size) + idx + 32] = mem[_8360 + _8219 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8923) + _8219 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8219 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8219 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8219 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8219 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8219 + ceil32(return_data.size) + 64]
                        else:
                            if not mem[460 len 20]:
                                revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                            mem[mem[64] + 4] = mem[428 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4], address(_5806)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(_5805), address(_5806)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if mem[320] <= 0:
                                revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                            if address(_5805) == address(_5806):
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[32]):
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7531 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7531 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7705 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7837 = mem[_7705]
                                        require mem[_7705] <= 4294967296
                                        require mem[_7705] + 32 <= return_data.size
                                        require mem[mem[_7705] + _7705] <= 4294967296 and mem[_7705] + (32 * mem[mem[_7705] + _7705]) + 32 <= return_data.size
                                        mem[_7705 + ceil32(return_data.size)] = mem[mem[_7705] + _7705]
                                        _8220 = mem[_7837 + _7705]
                                        idx = 0
                                        while idx < 32 * _8220:
                                            mem[_7705 + ceil32(return_data.size) + idx + 32] = mem[_7837 + _7705 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8220) + _7705 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7705 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7705 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7705 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7705 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7705 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7706 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7706 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7945 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8101 = mem[_7945]
                                        require mem[_7945] <= 4294967296
                                        require mem[_7945] + 32 <= return_data.size
                                        require mem[mem[_7945] + _7945] <= 4294967296 and mem[_7945] + (32 * mem[mem[_7945] + _7945]) + 32 <= return_data.size
                                        mem[_7945 + ceil32(return_data.size)] = mem[mem[_7945] + _7945]
                                        _8528 = mem[_8101 + _7945]
                                        idx = 0
                                        while idx < 32 * _8528:
                                            mem[_7945 + ceil32(return_data.size) + idx + 32] = mem[_8101 + _7945 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8528) + _7945 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7945 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7945 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7945 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7945 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7945 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if not -cd[132] + 100:
                                        _7709 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7709 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7946 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8103 = mem[_7946]
                                        require mem[_7946] <= 4294967296
                                        require mem[_7946] + 32 <= return_data.size
                                        require mem[mem[_7946] + _7946] <= 4294967296 and mem[_7946] + (32 * mem[mem[_7946] + _7946]) + 32 <= return_data.size
                                        mem[_7946 + ceil32(return_data.size)] = mem[mem[_7946] + _7946]
                                        _8529 = mem[_8103 + _7946]
                                        idx = 0
                                        while idx < 32 * _8529:
                                            mem[_7946 + ceil32(return_data.size) + idx + 32] = mem[_8103 + _7946 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8529) + _7946 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7946 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7946 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7946 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7946 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7946 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                        _7947 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7947 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8221 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8364 = mem[_8221]
                                        require mem[_8221] <= 4294967296
                                        require mem[_8221] + 32 <= return_data.size
                                        require mem[mem[_8221] + _8221] <= 4294967296 and mem[_8221] + (32 * mem[mem[_8221] + _8221]) + 32 <= return_data.size
                                        mem[_8221 + ceil32(return_data.size)] = mem[mem[_8221] + _8221]
                                        _8930 = mem[_8364 + _8221]
                                        idx = 0
                                        while idx < 32 * _8930:
                                            mem[_8221 + ceil32(return_data.size) + idx + 32] = mem[_8364 + _8221 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8930) + _8221 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8221 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8221 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8221 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8221 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8221 + ceil32(return_data.size) + 64]
                            else:
                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                    revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                                if not Mask(112, 0, ext_call.return_data[0]):
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7534 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7534 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7712 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7840 = mem[_7712]
                                        require mem[_7712] <= 4294967296
                                        require mem[_7712] + 32 <= return_data.size
                                        require mem[mem[_7712] + _7712] <= 4294967296 and mem[_7712] + (32 * mem[mem[_7712] + _7712]) + 32 <= return_data.size
                                        mem[_7712 + ceil32(return_data.size)] = mem[mem[_7712] + _7712]
                                        _8222 = mem[_7840 + _7712]
                                        idx = 0
                                        while idx < 32 * _8222:
                                            mem[_7712 + ceil32(return_data.size) + idx + 32] = mem[_7840 + _7712 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8222) + _7712 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7712 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7712 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7712 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7712 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7712 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7713 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7713 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7950 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8106 = mem[_7950]
                                        require mem[_7950] <= 4294967296
                                        require mem[_7950] + 32 <= return_data.size
                                        require mem[mem[_7950] + _7950] <= 4294967296 and mem[_7950] + (32 * mem[mem[_7950] + _7950]) + 32 <= return_data.size
                                        mem[_7950 + ceil32(return_data.size)] = mem[mem[_7950] + _7950]
                                        _8532 = mem[_8106 + _7950]
                                        idx = 0
                                        while idx < 32 * _8532:
                                            mem[_7950 + ceil32(return_data.size) + idx + 32] = mem[_8106 + _7950 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8532) + _7950 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7950 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7950 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7950 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7950 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7950 + ceil32(return_data.size) + 64]
                                else:
                                    require Mask(112, 0, ext_call.return_data[0])
                                    if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    require Mask(112, 0, ext_call.return_data[32])
                                    if not -cd[132] + 100:
                                        _7716 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7716 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7951 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8108 = mem[_7951]
                                        require mem[_7951] <= 4294967296
                                        require mem[_7951] + 32 <= return_data.size
                                        require mem[mem[_7951] + _7951] <= 4294967296 and mem[_7951] + (32 * mem[mem[_7951] + _7951]) + 32 <= return_data.size
                                        mem[_7951 + ceil32(return_data.size)] = mem[mem[_7951] + _7951]
                                        _8533 = mem[_8108 + _7951]
                                        idx = 0
                                        while idx < 32 * _8533:
                                            mem[_7951 + ceil32(return_data.size) + idx + 32] = mem[_8108 + _7951 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8533) + _7951 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _7951 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_7951 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_7951 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_7951 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_7951 + ceil32(return_data.size) + 64]
                                    else:
                                        require -cd[132] + 100
                                        if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                            revert with 0, 'ds-math-mul-overflow'
                                        mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                        _7952 = mem[320]
                                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0
                                        mem[mem[64] + 68] = address(cd[228])
                                        mem[mem[64] + 100] = cd[260]
                                        mem[mem[64] + 36] = 128
                                        mem[mem[64] + 132] = ('cd', 196).length
                                        mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                        mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                        require ext_code.size(address(cd[4]))
                                        call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                           value _7952 wei
                                             gas gas_remaining wei
                                            args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _8223 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _8368 = mem[_8223]
                                        require mem[_8223] <= 4294967296
                                        require mem[_8223] + 32 <= return_data.size
                                        require mem[mem[_8223] + _8223] <= 4294967296 and mem[_8223] + (32 * mem[mem[_8223] + _8223]) + 32 <= return_data.size
                                        mem[_8223 + ceil32(return_data.size)] = mem[mem[_8223] + _8223]
                                        _8937 = mem[_8368 + _8223]
                                        idx = 0
                                        while idx < 32 * _8937:
                                            mem[_8223 + ceil32(return_data.size) + idx + 32] = mem[_8368 + _8223 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[64] = (32 * _8937) + _8223 + ceil32(return_data.size) + 32
                                        if not mem[s]:
                                            s = _8223 + ceil32(return_data.size)
                                            continue 
                                        require 0 < mem[_8223 + ceil32(return_data.size)]
                                        require 0 < mem[s]
                                        mem[s + 32] = mem[s + 32] + mem[_8223 + ceil32(return_data.size) + 32]
                                        require 1 < mem[_8223 + ceil32(return_data.size)]
                                        require 1 < mem[s]
                                        mem[s + 64] = mem[s + 64] + mem[_8223 + ceil32(return_data.size) + 64]
                s = s
                continue 
            if mem[352] <= 0:
                if not cd[164]:
                    Mask(96, 0, stor0.field_160) = 1
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[s]
                    _5720 = mem[s]
                    mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                    return 32, mem[mem[64] + 32 len (32 * _5720) + 32]
                _5690 = mem[384]
                _5691 = mem[448]
                mem[mem[64] + 4] = address(cd[228])
                require ext_code.size(address(_5691))
                staticcall address(_5691).0x70a08231 with:
                        gas gas_remaining wei
                       args address(cd[228])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] - _5690 != ext_call.return_data[0] - _5690:
                    revert with 0, 'ds-math-mul-overflow'
                _6120 = mem[448]
                mem[mem[64] + 4] = address(cd[228])
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = ext_call.return_data[0] - _5690 / 100
                require ext_code.size(address(_6120))
                call address(_6120).0x23b872dd with:
                     gas gas_remaining wei
                    args address(cd[228]), address(this.address), ext_call.return_data[0] - _5690 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _6280 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_6280 + 32 len 64] = call.data[calldata.size len 64]
                require 0 < mem[_6280]
                mem[_6280 + 32] = mem[460 len 20]
                require 1 < mem[_6280]
                mem[_6280 + 64] = mem[428 len 20]
                require ext_code.size(mem[460 len 20])
                staticcall mem[460 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < mem[_6280]
                require ext_code.size(mem[_6280 + 44 len 20])
                call mem[_6280 + 44 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_6280 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_6280 + 100] = ext_call.return_data[0]
                mem[_6280 + 132] = 0
                mem[_6280 + 196] = address(cd[228])
                mem[_6280 + 228] = block.timestamp
                mem[_6280 + 164] = 160
                mem[_6280 + 260] = mem[_6280]
                mem[_6280 + 292 len floor32(mem[_6280])] = mem[_6280 + 32 len floor32(mem[_6280])]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(cd[228]), block.timestamp, mem[_6280 + 260 len (32 * mem[_6280]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                Mask(96, 0, stor0.field_160) = 1
                mem[_6280 + 96] = 32
                mem[_6280 + 128] = mem[s]
                _12337 = mem[s]
                mem[_6280 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                return memory
                  from mem[64]
                   len (32 * _12337) + _6280 + -mem[64] + 160
            _5671 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            require ext_code.size(address(_5671))
            staticcall address(_5671).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[228])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - mem[384] < mem[352]:
                revert with 0, 'burn exceeds upper limit'
            if not cd[164]:
                Mask(96, 0, stor0.field_160) = 1
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[s]
                _5854 = mem[s]
                mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                return 32, mem[mem[64] + 32 len (32 * _5854) + 32]
            _5830 = mem[384]
            _5831 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            require ext_code.size(address(_5831))
            staticcall address(_5831).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[228])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - _5830 != ext_call.return_data[0] - _5830:
                revert with 0, 'ds-math-mul-overflow'
            _6323 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = ext_call.return_data[0] - _5830 / 100
            require ext_code.size(address(_6323))
            call address(_6323).0x23b872dd with:
                 gas gas_remaining wei
                args address(cd[228]), address(this.address), ext_call.return_data[0] - _5830 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _6551 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_6551 + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[_6551]
            mem[_6551 + 32] = mem[460 len 20]
            require 1 < mem[_6551]
            mem[_6551 + 64] = mem[428 len 20]
            require ext_code.size(mem[460 len 20])
            staticcall mem[460 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < mem[_6551]
            require ext_code.size(mem[_6551 + 44 len 20])
            call mem[_6551 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_6551 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[_6551 + 100] = ext_call.return_data[0]
            mem[_6551 + 132] = 0
            mem[_6551 + 196] = address(cd[228])
            mem[_6551 + 228] = block.timestamp
            mem[_6551 + 164] = 160
            mem[_6551 + 260] = mem[_6551]
            mem[_6551 + 292 len floor32(mem[_6551])] = mem[_6551 + 32 len floor32(mem[_6551])]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(cd[228]), block.timestamp, mem[_6551 + 260 len (32 * mem[_6551]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            Mask(96, 0, stor0.field_160) = 1
            mem[_6551 + 96] = 32
            mem[_6551 + 128] = mem[s]
            _12340 = mem[s]
            mem[_6551 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return memory
              from mem[64]
               len (32 * _12340) + _6551 + -mem[64] + 160
        mem[480] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[484] = cd[100]
        mem[516] = 64
        mem[548] = ('cd', 196).length
        mem[580 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
        mem[(32 * ('cd', 196).length) + 580] = 0
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[100], Array(len=('cd', 196).length, data=call.data[cd[196] + 36 len floor32(('cd', 196).length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 480
        require return_data.size >= 32
        _63 = mem[480 len 4], Mask(224, 32, cd[100]) >> 32
        require mem[480 len 4], Mask(224, 32, cd[100]) >> 32 <= 4294967296
        require mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 32 <= return_data.size
        require mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480]
        _108 = mem[_63 + 480]
        mem[ceil32(return_data.size) + 512 len floor32(mem[_63 + 480])] = mem[_63 + 512 len floor32(mem[_63 + 480])]
        mem[64] = (32 * _108) + ceil32(return_data.size) + 512
        require 0 < mem[ceil32(return_data.size) + 480]
        _5676 = mem[ceil32(return_data.size) + 512]
        mem[320] = mem[ceil32(return_data.size) + 512]
        mem[352] = 0
        mem[(32 * _108) + ceil32(return_data.size) + 516] = address(cd[228])
        require ext_code.size(address(('cd', 196)[1]))
        staticcall address(('cd', 196)[1]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[228])
        mem[(32 * _108) + ceil32(return_data.size) + 512] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[384] = ext_call.return_data[0]
        s = 96
        while msg.value > 0:
            if mem[288] >= _5676:
                mem[288] = mem[288] - _5676
                if cd[132] >= 100:
                    _11983 = mem[320]
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 68] = address(cd[228])
                    mem[mem[64] + 100] = cd[260]
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 196).length
                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value _11983 wei
                         gas gas_remaining wei
                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12382 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12448 = mem[_12382]
                    require mem[_12382] <= 4294967296
                    require mem[_12382] + 32 <= return_data.size
                    require mem[mem[_12382] + _12382] <= 4294967296 and mem[_12382] + (32 * mem[mem[_12382] + _12382]) + 32 <= return_data.size
                    mem[_12382 + ceil32(return_data.size)] = mem[mem[_12382] + _12382]
                    _12513 = mem[_12448 + _12382]
                    idx = 0
                    while idx < 32 * _12513:
                        mem[_12382 + ceil32(return_data.size) + idx + 32] = mem[_12448 + _12382 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _12513) + _12382 + ceil32(return_data.size) + 32
                    if not mem[s]:
                        s = _12382 + ceil32(return_data.size)
                        continue 
                    require 0 < mem[_12382 + ceil32(return_data.size)]
                    require 0 < mem[s]
                    mem[s + 32] = mem[s + 32] + mem[_12382 + ceil32(return_data.size) + 32]
                    require 1 < mem[_12382 + ceil32(return_data.size)]
                    require 1 < mem[s]
                    mem[s + 64] = mem[s + 64] + mem[_12382 + ceil32(return_data.size) + 64]
                else:
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _12451 = mem[416]
                    _12452 = mem[448]
                    if mem[428 len 20] == mem[460 len 20]:
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[428 len 20] < mem[460 len 20]:
                        if not mem[428 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_12452)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_12451), address(_12452)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_12451) == address(_12451):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13352 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13352 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13522 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13642 = mem[_13522]
                                    require mem[_13522] <= 4294967296
                                    require mem[_13522] + 32 <= return_data.size
                                    require mem[mem[_13522] + _13522] <= 4294967296 and mem[_13522] + (32 * mem[mem[_13522] + _13522]) + 32 <= return_data.size
                                    mem[_13522 + ceil32(return_data.size)] = mem[mem[_13522] + _13522]
                                    _13942 = mem[_13642 + _13522]
                                    idx = 0
                                    while idx < 32 * _13942:
                                        mem[_13522 + ceil32(return_data.size) + idx + 32] = mem[_13642 + _13522 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13942) + _13522 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13522 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13522 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13522 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13522 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13522 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13523 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13523 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13738 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13859 = mem[_13738]
                                    require mem[_13738] <= 4294967296
                                    require mem[_13738] + 32 <= return_data.size
                                    require mem[mem[_13738] + _13738] <= 4294967296 and mem[_13738] + (32 * mem[mem[_13738] + _13738]) + 32 <= return_data.size
                                    mem[_13738 + ceil32(return_data.size)] = mem[mem[_13738] + _13738]
                                    _14112 = mem[_13859 + _13738]
                                    idx = 0
                                    while idx < 32 * _14112:
                                        mem[_13738 + ceil32(return_data.size) + idx + 32] = mem[_13859 + _13738 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14112) + _13738 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13738 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13738 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13738 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13738 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13738 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13526 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13526 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13739 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13861 = mem[_13739]
                                    require mem[_13739] <= 4294967296
                                    require mem[_13739] + 32 <= return_data.size
                                    require mem[mem[_13739] + _13739] <= 4294967296 and mem[_13739] + (32 * mem[mem[_13739] + _13739]) + 32 <= return_data.size
                                    mem[_13739 + ceil32(return_data.size)] = mem[mem[_13739] + _13739]
                                    _14113 = mem[_13861 + _13739]
                                    idx = 0
                                    while idx < 32 * _14113:
                                        mem[_13739 + ceil32(return_data.size) + idx + 32] = mem[_13861 + _13739 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14113) + _13739 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13739 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13739 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13739 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13739 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13739 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13740 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13740 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13943 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14016 = mem[_13943]
                                    require mem[_13943] <= 4294967296
                                    require mem[_13943] + 32 <= return_data.size
                                    require mem[mem[_13943] + _13943] <= 4294967296 and mem[_13943] + (32 * mem[mem[_13943] + _13943]) + 32 <= return_data.size
                                    mem[_13943 + ceil32(return_data.size)] = mem[mem[_13943] + _13943]
                                    _14296 = mem[_14016 + _13943]
                                    idx = 0
                                    while idx < 32 * _14296:
                                        mem[_13943 + ceil32(return_data.size) + idx + 32] = mem[_14016 + _13943 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14296) + _13943 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13943 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13943 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13943 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13943 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13943 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13355 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13355 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13529 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13645 = mem[_13529]
                                    require mem[_13529] <= 4294967296
                                    require mem[_13529] + 32 <= return_data.size
                                    require mem[mem[_13529] + _13529] <= 4294967296 and mem[_13529] + (32 * mem[mem[_13529] + _13529]) + 32 <= return_data.size
                                    mem[_13529 + ceil32(return_data.size)] = mem[mem[_13529] + _13529]
                                    _13944 = mem[_13645 + _13529]
                                    idx = 0
                                    while idx < 32 * _13944:
                                        mem[_13529 + ceil32(return_data.size) + idx + 32] = mem[_13645 + _13529 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13944) + _13529 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13529 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13529 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13529 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13529 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13529 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13530 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13530 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13743 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13864 = mem[_13743]
                                    require mem[_13743] <= 4294967296
                                    require mem[_13743] + 32 <= return_data.size
                                    require mem[mem[_13743] + _13743] <= 4294967296 and mem[_13743] + (32 * mem[mem[_13743] + _13743]) + 32 <= return_data.size
                                    mem[_13743 + ceil32(return_data.size)] = mem[mem[_13743] + _13743]
                                    _14116 = mem[_13864 + _13743]
                                    idx = 0
                                    while idx < 32 * _14116:
                                        mem[_13743 + ceil32(return_data.size) + idx + 32] = mem[_13864 + _13743 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14116) + _13743 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13743 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13743 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13743 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13743 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13743 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13533 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13533 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13744 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13866 = mem[_13744]
                                    require mem[_13744] <= 4294967296
                                    require mem[_13744] + 32 <= return_data.size
                                    require mem[mem[_13744] + _13744] <= 4294967296 and mem[_13744] + (32 * mem[mem[_13744] + _13744]) + 32 <= return_data.size
                                    mem[_13744 + ceil32(return_data.size)] = mem[mem[_13744] + _13744]
                                    _14117 = mem[_13866 + _13744]
                                    idx = 0
                                    while idx < 32 * _14117:
                                        mem[_13744 + ceil32(return_data.size) + idx + 32] = mem[_13866 + _13744 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14117) + _13744 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13744 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13744 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13744 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13744 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13744 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13745 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13745 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13945 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14020 = mem[_13945]
                                    require mem[_13945] <= 4294967296
                                    require mem[_13945] + 32 <= return_data.size
                                    require mem[mem[_13945] + _13945] <= 4294967296 and mem[_13945] + (32 * mem[mem[_13945] + _13945]) + 32 <= return_data.size
                                    mem[_13945 + ceil32(return_data.size)] = mem[mem[_13945] + _13945]
                                    _14303 = mem[_14020 + _13945]
                                    idx = 0
                                    while idx < 32 * _14303:
                                        mem[_13945 + ceil32(return_data.size) + idx + 32] = mem[_14020 + _13945 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14303) + _13945 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13945 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13945 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13945 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13945 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13945 + ceil32(return_data.size) + 64]
                    else:
                        if not mem[460 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_12452)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_12451), address(_12452)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_12451) == address(_12452):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13358 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13358 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13536 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13648 = mem[_13536]
                                    require mem[_13536] <= 4294967296
                                    require mem[_13536] + 32 <= return_data.size
                                    require mem[mem[_13536] + _13536] <= 4294967296 and mem[_13536] + (32 * mem[mem[_13536] + _13536]) + 32 <= return_data.size
                                    mem[_13536 + ceil32(return_data.size)] = mem[mem[_13536] + _13536]
                                    _13946 = mem[_13648 + _13536]
                                    idx = 0
                                    while idx < 32 * _13946:
                                        mem[_13536 + ceil32(return_data.size) + idx + 32] = mem[_13648 + _13536 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13946) + _13536 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13536 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13536 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13536 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13536 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13536 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13537 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13537 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13748 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13869 = mem[_13748]
                                    require mem[_13748] <= 4294967296
                                    require mem[_13748] + 32 <= return_data.size
                                    require mem[mem[_13748] + _13748] <= 4294967296 and mem[_13748] + (32 * mem[mem[_13748] + _13748]) + 32 <= return_data.size
                                    mem[_13748 + ceil32(return_data.size)] = mem[mem[_13748] + _13748]
                                    _14120 = mem[_13869 + _13748]
                                    idx = 0
                                    while idx < 32 * _14120:
                                        mem[_13748 + ceil32(return_data.size) + idx + 32] = mem[_13869 + _13748 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14120) + _13748 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13748 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13748 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13748 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13748 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13748 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13540 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13540 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13749 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13871 = mem[_13749]
                                    require mem[_13749] <= 4294967296
                                    require mem[_13749] + 32 <= return_data.size
                                    require mem[mem[_13749] + _13749] <= 4294967296 and mem[_13749] + (32 * mem[mem[_13749] + _13749]) + 32 <= return_data.size
                                    mem[_13749 + ceil32(return_data.size)] = mem[mem[_13749] + _13749]
                                    _14121 = mem[_13871 + _13749]
                                    idx = 0
                                    while idx < 32 * _14121:
                                        mem[_13749 + ceil32(return_data.size) + idx + 32] = mem[_13871 + _13749 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14121) + _13749 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13749 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13749 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13749 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13749 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13749 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13750 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13750 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13947 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14024 = mem[_13947]
                                    require mem[_13947] <= 4294967296
                                    require mem[_13947] + 32 <= return_data.size
                                    require mem[mem[_13947] + _13947] <= 4294967296 and mem[_13947] + (32 * mem[mem[_13947] + _13947]) + 32 <= return_data.size
                                    mem[_13947 + ceil32(return_data.size)] = mem[mem[_13947] + _13947]
                                    _14310 = mem[_14024 + _13947]
                                    idx = 0
                                    while idx < 32 * _14310:
                                        mem[_13947 + ceil32(return_data.size) + idx + 32] = mem[_14024 + _13947 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14310) + _13947 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13947 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13947 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13947 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13947 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13947 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13361 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13361 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13543 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13651 = mem[_13543]
                                    require mem[_13543] <= 4294967296
                                    require mem[_13543] + 32 <= return_data.size
                                    require mem[mem[_13543] + _13543] <= 4294967296 and mem[_13543] + (32 * mem[mem[_13543] + _13543]) + 32 <= return_data.size
                                    mem[_13543 + ceil32(return_data.size)] = mem[mem[_13543] + _13543]
                                    _13948 = mem[_13651 + _13543]
                                    idx = 0
                                    while idx < 32 * _13948:
                                        mem[_13543 + ceil32(return_data.size) + idx + 32] = mem[_13651 + _13543 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13948) + _13543 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13543 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13543 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13543 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13543 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13543 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13544 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13544 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13753 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13874 = mem[_13753]
                                    require mem[_13753] <= 4294967296
                                    require mem[_13753] + 32 <= return_data.size
                                    require mem[mem[_13753] + _13753] <= 4294967296 and mem[_13753] + (32 * mem[mem[_13753] + _13753]) + 32 <= return_data.size
                                    mem[_13753 + ceil32(return_data.size)] = mem[mem[_13753] + _13753]
                                    _14124 = mem[_13874 + _13753]
                                    idx = 0
                                    while idx < 32 * _14124:
                                        mem[_13753 + ceil32(return_data.size) + idx + 32] = mem[_13874 + _13753 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14124) + _13753 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13753 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13753 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13753 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13753 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13753 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13547 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13547 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13754 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13876 = mem[_13754]
                                    require mem[_13754] <= 4294967296
                                    require mem[_13754] + 32 <= return_data.size
                                    require mem[mem[_13754] + _13754] <= 4294967296 and mem[_13754] + (32 * mem[mem[_13754] + _13754]) + 32 <= return_data.size
                                    mem[_13754 + ceil32(return_data.size)] = mem[mem[_13754] + _13754]
                                    _14125 = mem[_13876 + _13754]
                                    idx = 0
                                    while idx < 32 * _14125:
                                        mem[_13754 + ceil32(return_data.size) + idx + 32] = mem[_13876 + _13754 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14125) + _13754 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13754 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13754 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13754 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13754 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13754 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13755 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13755 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13949 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14028 = mem[_13949]
                                    require mem[_13949] <= 4294967296
                                    require mem[_13949] + 32 <= return_data.size
                                    require mem[mem[_13949] + _13949] <= 4294967296 and mem[_13949] + (32 * mem[mem[_13949] + _13949]) + 32 <= return_data.size
                                    mem[_13949 + ceil32(return_data.size)] = mem[mem[_13949] + _13949]
                                    _14317 = mem[_14028 + _13949]
                                    idx = 0
                                    while idx < 32 * _14317:
                                        mem[_13949 + ceil32(return_data.size) + idx + 32] = mem[_14028 + _13949 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14317) + _13949 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13949 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13949 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13949 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13949 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13949 + ceil32(return_data.size) + 64]
            else:
                mem[320] = mem[288]
                mem[288] = 0
                if cd[132] >= 100:
                    _11978 = mem[320]
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 68] = address(cd[228])
                    mem[mem[64] + 100] = cd[260]
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 196).length
                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value _11978 wei
                         gas gas_remaining wei
                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12380 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12443 = mem[_12380]
                    require mem[_12380] <= 4294967296
                    require mem[_12380] + 32 <= return_data.size
                    require mem[mem[_12380] + _12380] <= 4294967296 and mem[_12380] + (32 * mem[mem[_12380] + _12380]) + 32 <= return_data.size
                    mem[_12380 + ceil32(return_data.size)] = mem[mem[_12380] + _12380]
                    _12510 = mem[_12443 + _12380]
                    idx = 0
                    while idx < 32 * _12510:
                        mem[_12380 + ceil32(return_data.size) + idx + 32] = mem[_12443 + _12380 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _12510) + _12380 + ceil32(return_data.size) + 32
                    if not mem[s]:
                        s = _12380 + ceil32(return_data.size)
                        continue 
                    require 0 < mem[_12380 + ceil32(return_data.size)]
                    require 0 < mem[s]
                    mem[s + 32] = mem[s + 32] + mem[_12380 + ceil32(return_data.size) + 32]
                    require 1 < mem[_12380 + ceil32(return_data.size)]
                    require 1 < mem[s]
                    mem[s + 64] = mem[s + 64] + mem[_12380 + ceil32(return_data.size) + 64]
                else:
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _12446 = mem[416]
                    _12447 = mem[448]
                    if mem[428 len 20] == mem[460 len 20]:
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[428 len 20] < mem[460 len 20]:
                        if not mem[428 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_12447)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_12446), address(_12447)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_12446) == address(_12446):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13340 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13340 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13494 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13630 = mem[_13494]
                                    require mem[_13494] <= 4294967296
                                    require mem[_13494] + 32 <= return_data.size
                                    require mem[mem[_13494] + _13494] <= 4294967296 and mem[_13494] + (32 * mem[mem[_13494] + _13494]) + 32 <= return_data.size
                                    mem[_13494 + ceil32(return_data.size)] = mem[mem[_13494] + _13494]
                                    _13934 = mem[_13630 + _13494]
                                    idx = 0
                                    while idx < 32 * _13934:
                                        mem[_13494 + ceil32(return_data.size) + idx + 32] = mem[_13630 + _13494 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13934) + _13494 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13494 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13494 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13494 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13494 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13494 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13495 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13495 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13718 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13839 = mem[_13718]
                                    require mem[_13718] <= 4294967296
                                    require mem[_13718] + 32 <= return_data.size
                                    require mem[mem[_13718] + _13718] <= 4294967296 and mem[_13718] + (32 * mem[mem[_13718] + _13718]) + 32 <= return_data.size
                                    mem[_13718 + ceil32(return_data.size)] = mem[mem[_13718] + _13718]
                                    _14096 = mem[_13839 + _13718]
                                    idx = 0
                                    while idx < 32 * _14096:
                                        mem[_13718 + ceil32(return_data.size) + idx + 32] = mem[_13839 + _13718 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14096) + _13718 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13718 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13718 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13718 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13718 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13718 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13498 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13498 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13719 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13841 = mem[_13719]
                                    require mem[_13719] <= 4294967296
                                    require mem[_13719] + 32 <= return_data.size
                                    require mem[mem[_13719] + _13719] <= 4294967296 and mem[_13719] + (32 * mem[mem[_13719] + _13719]) + 32 <= return_data.size
                                    mem[_13719 + ceil32(return_data.size)] = mem[mem[_13719] + _13719]
                                    _14097 = mem[_13841 + _13719]
                                    idx = 0
                                    while idx < 32 * _14097:
                                        mem[_13719 + ceil32(return_data.size) + idx + 32] = mem[_13841 + _13719 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14097) + _13719 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13719 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13719 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13719 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13719 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13719 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13720 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13720 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13935 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14000 = mem[_13935]
                                    require mem[_13935] <= 4294967296
                                    require mem[_13935] + 32 <= return_data.size
                                    require mem[mem[_13935] + _13935] <= 4294967296 and mem[_13935] + (32 * mem[mem[_13935] + _13935]) + 32 <= return_data.size
                                    mem[_13935 + ceil32(return_data.size)] = mem[mem[_13935] + _13935]
                                    _14268 = mem[_14000 + _13935]
                                    idx = 0
                                    while idx < 32 * _14268:
                                        mem[_13935 + ceil32(return_data.size) + idx + 32] = mem[_14000 + _13935 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14268) + _13935 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13935 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13935 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13935 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13935 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13935 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13343 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13343 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13501 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13633 = mem[_13501]
                                    require mem[_13501] <= 4294967296
                                    require mem[_13501] + 32 <= return_data.size
                                    require mem[mem[_13501] + _13501] <= 4294967296 and mem[_13501] + (32 * mem[mem[_13501] + _13501]) + 32 <= return_data.size
                                    mem[_13501 + ceil32(return_data.size)] = mem[mem[_13501] + _13501]
                                    _13936 = mem[_13633 + _13501]
                                    idx = 0
                                    while idx < 32 * _13936:
                                        mem[_13501 + ceil32(return_data.size) + idx + 32] = mem[_13633 + _13501 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13936) + _13501 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13501 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13501 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13501 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13501 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13501 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13502 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13502 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13723 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13844 = mem[_13723]
                                    require mem[_13723] <= 4294967296
                                    require mem[_13723] + 32 <= return_data.size
                                    require mem[mem[_13723] + _13723] <= 4294967296 and mem[_13723] + (32 * mem[mem[_13723] + _13723]) + 32 <= return_data.size
                                    mem[_13723 + ceil32(return_data.size)] = mem[mem[_13723] + _13723]
                                    _14100 = mem[_13844 + _13723]
                                    idx = 0
                                    while idx < 32 * _14100:
                                        mem[_13723 + ceil32(return_data.size) + idx + 32] = mem[_13844 + _13723 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14100) + _13723 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13723 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13723 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13723 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13723 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13723 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13505 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13505 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13724 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13846 = mem[_13724]
                                    require mem[_13724] <= 4294967296
                                    require mem[_13724] + 32 <= return_data.size
                                    require mem[mem[_13724] + _13724] <= 4294967296 and mem[_13724] + (32 * mem[mem[_13724] + _13724]) + 32 <= return_data.size
                                    mem[_13724 + ceil32(return_data.size)] = mem[mem[_13724] + _13724]
                                    _14101 = mem[_13846 + _13724]
                                    idx = 0
                                    while idx < 32 * _14101:
                                        mem[_13724 + ceil32(return_data.size) + idx + 32] = mem[_13846 + _13724 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14101) + _13724 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13724 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13724 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13724 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13724 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13724 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13725 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13725 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13937 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14004 = mem[_13937]
                                    require mem[_13937] <= 4294967296
                                    require mem[_13937] + 32 <= return_data.size
                                    require mem[mem[_13937] + _13937] <= 4294967296 and mem[_13937] + (32 * mem[mem[_13937] + _13937]) + 32 <= return_data.size
                                    mem[_13937 + ceil32(return_data.size)] = mem[mem[_13937] + _13937]
                                    _14275 = mem[_14004 + _13937]
                                    idx = 0
                                    while idx < 32 * _14275:
                                        mem[_13937 + ceil32(return_data.size) + idx + 32] = mem[_14004 + _13937 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14275) + _13937 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13937 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13937 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13937 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13937 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13937 + ceil32(return_data.size) + 64]
                    else:
                        if not mem[460 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_12447)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_12446), address(_12447)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_12446) == address(_12447):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13346 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13346 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13508 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13636 = mem[_13508]
                                    require mem[_13508] <= 4294967296
                                    require mem[_13508] + 32 <= return_data.size
                                    require mem[mem[_13508] + _13508] <= 4294967296 and mem[_13508] + (32 * mem[mem[_13508] + _13508]) + 32 <= return_data.size
                                    mem[_13508 + ceil32(return_data.size)] = mem[mem[_13508] + _13508]
                                    _13938 = mem[_13636 + _13508]
                                    idx = 0
                                    while idx < 32 * _13938:
                                        mem[_13508 + ceil32(return_data.size) + idx + 32] = mem[_13636 + _13508 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13938) + _13508 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13508 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13508 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13508 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13508 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13508 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13509 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13509 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13728 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13849 = mem[_13728]
                                    require mem[_13728] <= 4294967296
                                    require mem[_13728] + 32 <= return_data.size
                                    require mem[mem[_13728] + _13728] <= 4294967296 and mem[_13728] + (32 * mem[mem[_13728] + _13728]) + 32 <= return_data.size
                                    mem[_13728 + ceil32(return_data.size)] = mem[mem[_13728] + _13728]
                                    _14104 = mem[_13849 + _13728]
                                    idx = 0
                                    while idx < 32 * _14104:
                                        mem[_13728 + ceil32(return_data.size) + idx + 32] = mem[_13849 + _13728 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14104) + _13728 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13728 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13728 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13728 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13728 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13728 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _13512 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13512 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13729 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13851 = mem[_13729]
                                    require mem[_13729] <= 4294967296
                                    require mem[_13729] + 32 <= return_data.size
                                    require mem[mem[_13729] + _13729] <= 4294967296 and mem[_13729] + (32 * mem[mem[_13729] + _13729]) + 32 <= return_data.size
                                    mem[_13729 + ceil32(return_data.size)] = mem[mem[_13729] + _13729]
                                    _14105 = mem[_13851 + _13729]
                                    idx = 0
                                    while idx < 32 * _14105:
                                        mem[_13729 + ceil32(return_data.size) + idx + 32] = mem[_13851 + _13729 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14105) + _13729 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13729 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13729 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13729 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13729 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13729 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _13730 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13730 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13939 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14008 = mem[_13939]
                                    require mem[_13939] <= 4294967296
                                    require mem[_13939] + 32 <= return_data.size
                                    require mem[mem[_13939] + _13939] <= 4294967296 and mem[_13939] + (32 * mem[mem[_13939] + _13939]) + 32 <= return_data.size
                                    mem[_13939 + ceil32(return_data.size)] = mem[mem[_13939] + _13939]
                                    _14282 = mem[_14008 + _13939]
                                    idx = 0
                                    while idx < 32 * _14282:
                                        mem[_13939 + ceil32(return_data.size) + idx + 32] = mem[_14008 + _13939 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14282) + _13939 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13939 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13939 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13939 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13939 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13939 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13349 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13349 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13515 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13639 = mem[_13515]
                                    require mem[_13515] <= 4294967296
                                    require mem[_13515] + 32 <= return_data.size
                                    require mem[mem[_13515] + _13515] <= 4294967296 and mem[_13515] + (32 * mem[mem[_13515] + _13515]) + 32 <= return_data.size
                                    mem[_13515 + ceil32(return_data.size)] = mem[mem[_13515] + _13515]
                                    _13940 = mem[_13639 + _13515]
                                    idx = 0
                                    while idx < 32 * _13940:
                                        mem[_13515 + ceil32(return_data.size) + idx + 32] = mem[_13639 + _13515 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _13940) + _13515 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13515 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13515 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13515 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13515 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13515 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13516 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13516 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13733 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13854 = mem[_13733]
                                    require mem[_13733] <= 4294967296
                                    require mem[_13733] + 32 <= return_data.size
                                    require mem[mem[_13733] + _13733] <= 4294967296 and mem[_13733] + (32 * mem[mem[_13733] + _13733]) + 32 <= return_data.size
                                    mem[_13733 + ceil32(return_data.size)] = mem[mem[_13733] + _13733]
                                    _14108 = mem[_13854 + _13733]
                                    idx = 0
                                    while idx < 32 * _14108:
                                        mem[_13733 + ceil32(return_data.size) + idx + 32] = mem[_13854 + _13733 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14108) + _13733 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13733 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13733 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13733 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13733 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13733 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _13519 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13519 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13734 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _13856 = mem[_13734]
                                    require mem[_13734] <= 4294967296
                                    require mem[_13734] + 32 <= return_data.size
                                    require mem[mem[_13734] + _13734] <= 4294967296 and mem[_13734] + (32 * mem[mem[_13734] + _13734]) + 32 <= return_data.size
                                    mem[_13734 + ceil32(return_data.size)] = mem[mem[_13734] + _13734]
                                    _14109 = mem[_13856 + _13734]
                                    idx = 0
                                    while idx < 32 * _14109:
                                        mem[_13734 + ceil32(return_data.size) + idx + 32] = mem[_13856 + _13734 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14109) + _13734 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13734 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13734 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13734 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13734 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13734 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _13735 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = address(cd[228])
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _13735 wei
                                         gas gas_remaining wei
                                        args 0, 128, address(cd[228]), cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _13941 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _14012 = mem[_13941]
                                    require mem[_13941] <= 4294967296
                                    require mem[_13941] + 32 <= return_data.size
                                    require mem[mem[_13941] + _13941] <= 4294967296 and mem[_13941] + (32 * mem[mem[_13941] + _13941]) + 32 <= return_data.size
                                    mem[_13941 + ceil32(return_data.size)] = mem[mem[_13941] + _13941]
                                    _14289 = mem[_14012 + _13941]
                                    idx = 0
                                    while idx < 32 * _14289:
                                        mem[_13941 + ceil32(return_data.size) + idx + 32] = mem[_14012 + _13941 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _14289) + _13941 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _13941 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_13941 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_13941 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_13941 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_13941 + ceil32(return_data.size) + 64]
            s = s
            continue 
        if mem[352] <= 0:
            if not cd[164]:
                Mask(96, 0, stor0.field_160) = 1
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[s]
                _11976 = mem[s]
                mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                return 32, mem[mem[64] + 32 len (32 * _11976) + 32]
            _11748 = mem[384]
            _11749 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            require ext_code.size(address(_11749))
            staticcall address(_11749).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[228])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - _11748 != ext_call.return_data[0] - _11748:
                revert with 0, 'ds-math-mul-overflow'
            _12623 = mem[448]
            mem[mem[64] + 4] = address(cd[228])
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = ext_call.return_data[0] - _11748 / 100
            require ext_code.size(address(_12623))
            call address(_12623).0x23b872dd with:
                 gas gas_remaining wei
                args address(cd[228]), address(this.address), ext_call.return_data[0] - _11748 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _12720 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_12720 + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[_12720]
            mem[_12720 + 32] = mem[460 len 20]
            require 1 < mem[_12720]
            mem[_12720 + 64] = mem[428 len 20]
            require ext_code.size(mem[460 len 20])
            staticcall mem[460 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < mem[_12720]
            require ext_code.size(mem[_12720 + 44 len 20])
            call mem[_12720 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_12720 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[_12720 + 100] = ext_call.return_data[0]
            mem[_12720 + 132] = 0
            mem[_12720 + 196] = address(cd[228])
            mem[_12720 + 228] = block.timestamp
            mem[_12720 + 164] = 160
            mem[_12720 + 260] = mem[_12720]
            mem[_12720 + 292 len floor32(mem[_12720])] = mem[_12720 + 32 len floor32(mem[_12720])]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(cd[228]), block.timestamp, mem[_12720 + 260 len (32 * mem[_12720]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            Mask(96, 0, stor0.field_160) = 1
            mem[_12720 + 96] = 32
            mem[_12720 + 128] = mem[s]
            _16114 = mem[s]
            mem[_12720 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return memory
              from mem[64]
               len (32 * _16114) + _12720 + -mem[64] + 160
        _11564 = mem[448]
        mem[mem[64] + 4] = address(cd[228])
        require ext_code.size(address(_11564))
        staticcall address(_11564).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[228])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - mem[384] < mem[352]:
            revert with 0, 'burn exceeds upper limit'
        if not cd[164]:
            Mask(96, 0, stor0.field_160) = 1
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[s]
            _12494 = mem[s]
            mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return 32, mem[mem[64] + 32 len (32 * _12494) + 32]
        _12475 = mem[384]
        _12476 = mem[448]
        mem[mem[64] + 4] = address(cd[228])
        require ext_code.size(address(_12476))
        staticcall address(_12476).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[228])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - _12475 != ext_call.return_data[0] - _12475:
            revert with 0, 'ds-math-mul-overflow'
        _12745 = mem[448]
        mem[mem[64] + 4] = address(cd[228])
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = ext_call.return_data[0] - _12475 / 100
        require ext_code.size(address(_12745))
        call address(_12745).0x23b872dd with:
             gas gas_remaining wei
            args address(cd[228]), address(this.address), ext_call.return_data[0] - _12475 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _12851 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_12851 + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[_12851]
        mem[_12851 + 32] = mem[460 len 20]
        require 1 < mem[_12851]
        mem[_12851 + 64] = mem[428 len 20]
        require ext_code.size(mem[460 len 20])
        staticcall mem[460 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < mem[_12851]
        require ext_code.size(mem[_12851 + 44 len 20])
        call mem[_12851 + 44 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_12851 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[_12851 + 100] = ext_call.return_data[0]
        mem[_12851 + 132] = 0
        mem[_12851 + 196] = address(cd[228])
        mem[_12851 + 228] = block.timestamp
        mem[_12851 + 164] = 160
        mem[_12851 + 260] = mem[_12851]
        mem[_12851 + 292 len floor32(mem[_12851])] = mem[_12851 + 32 len floor32(mem[_12851])]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(cd[228]), block.timestamp, mem[_12851 + 260 len (32 * mem[_12851]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        Mask(96, 0, stor0.field_160) = 1
        mem[_12851 + 96] = 32
        mem[_12851 + 128] = mem[s]
        _16117 = mem[s]
        mem[_12851 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
        return memory
          from mem[64]
           len (32 * _16117) + _12851 + -mem[64] + 160
    if cd[100] <= 0:
        mem[352] = 0
        mem[484] = owner
        require ext_code.size(address(('cd', 196)[1]))
        staticcall address(('cd', 196)[1]).0x70a08231 with:
                gas gas_remaining wei
               args owner
        mem[480] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[384] = ext_call.return_data[0]
        s = 96
        while msg.value > 0:
            if mem[288] >= cd[36]:
                mem[288] = mem[288] - cd[36]
                if cd[132] >= 100:
                    _5741 = mem[320]
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 68] = owner
                    mem[mem[64] + 100] = cd[260]
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 196).length
                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value _5741 wei
                         gas gas_remaining wei
                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5788 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5818 = mem[_5788]
                    require mem[_5788] <= 4294967296
                    require mem[_5788] + 32 <= return_data.size
                    require mem[mem[_5788] + _5788] <= 4294967296 and mem[_5788] + (32 * mem[mem[_5788] + _5788]) + 32 <= return_data.size
                    mem[_5788 + ceil32(return_data.size)] = mem[mem[_5788] + _5788]
                    _5898 = mem[_5818 + _5788]
                    idx = 0
                    while idx < 32 * _5898:
                        mem[_5788 + ceil32(return_data.size) + idx + 32] = mem[_5818 + _5788 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _5898) + _5788 + ceil32(return_data.size) + 32
                    if not mem[s]:
                        s = _5788 + ceil32(return_data.size)
                        continue 
                    require 0 < mem[_5788 + ceil32(return_data.size)]
                    require 0 < mem[s]
                    mem[s + 32] = mem[s + 32] + mem[_5788 + ceil32(return_data.size) + 32]
                    require 1 < mem[_5788 + ceil32(return_data.size)]
                    require 1 < mem[s]
                    mem[s + 64] = mem[s + 64] + mem[_5788 + ceil32(return_data.size) + 64]
                else:
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5821 = mem[416]
                    _5822 = mem[448]
                    if mem[428 len 20] == mem[460 len 20]:
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[428 len 20] < mem[460 len 20]:
                        if not mem[428 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_5822)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_5821), address(_5822)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_5821) == address(_5821):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _7568 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7568 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7777 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7867 = mem[_7777]
                                    require mem[_7777] <= 4294967296
                                    require mem[_7777] + 32 <= return_data.size
                                    require mem[mem[_7777] + _7777] <= 4294967296 and mem[_7777] + (32 * mem[mem[_7777] + _7777]) + 32 <= return_data.size
                                    mem[_7777 + ceil32(return_data.size)] = mem[mem[_7777] + _7777]
                                    _8264 = mem[_7867 + _7777]
                                    idx = 0
                                    while idx < 32 * _8264:
                                        mem[_7777 + ceil32(return_data.size) + idx + 32] = mem[_7867 + _7777 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8264) + _7777 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7777 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7777 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7777 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7777 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7777 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _7778 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7778 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8011 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8154 = mem[_8011]
                                    require mem[_8011] <= 4294967296
                                    require mem[_8011] + 32 <= return_data.size
                                    require mem[mem[_8011] + _8011] <= 4294967296 and mem[_8011] + (32 * mem[mem[_8011] + _8011]) + 32 <= return_data.size
                                    mem[_8011 + ceil32(return_data.size)] = mem[mem[_8011] + _8011]
                                    _8584 = mem[_8154 + _8011]
                                    idx = 0
                                    while idx < 32 * _8584:
                                        mem[_8011 + ceil32(return_data.size) + idx + 32] = mem[_8154 + _8011 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8584) + _8011 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8011 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8011 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8011 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8011 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8011 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _7781 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7781 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8012 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8156 = mem[_8012]
                                    require mem[_8012] <= 4294967296
                                    require mem[_8012] + 32 <= return_data.size
                                    require mem[mem[_8012] + _8012] <= 4294967296 and mem[_8012] + (32 * mem[mem[_8012] + _8012]) + 32 <= return_data.size
                                    mem[_8012 + ceil32(return_data.size)] = mem[mem[_8012] + _8012]
                                    _8585 = mem[_8156 + _8012]
                                    idx = 0
                                    while idx < 32 * _8585:
                                        mem[_8012 + ceil32(return_data.size) + idx + 32] = mem[_8156 + _8012 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8585) + _8012 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8012 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8012 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8012 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8012 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8012 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _8013 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _8013 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8265 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8430 = mem[_8265]
                                    require mem[_8265] <= 4294967296
                                    require mem[_8265] + 32 <= return_data.size
                                    require mem[mem[_8265] + _8265] <= 4294967296 and mem[_8265] + (32 * mem[mem[_8265] + _8265]) + 32 <= return_data.size
                                    mem[_8265 + ceil32(return_data.size)] = mem[mem[_8265] + _8265]
                                    _9024 = mem[_8430 + _8265]
                                    idx = 0
                                    while idx < 32 * _9024:
                                        mem[_8265 + ceil32(return_data.size) + idx + 32] = mem[_8430 + _8265 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _9024) + _8265 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8265 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8265 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8265 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8265 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8265 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _7571 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7571 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7784 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7870 = mem[_7784]
                                    require mem[_7784] <= 4294967296
                                    require mem[_7784] + 32 <= return_data.size
                                    require mem[mem[_7784] + _7784] <= 4294967296 and mem[_7784] + (32 * mem[mem[_7784] + _7784]) + 32 <= return_data.size
                                    mem[_7784 + ceil32(return_data.size)] = mem[mem[_7784] + _7784]
                                    _8266 = mem[_7870 + _7784]
                                    idx = 0
                                    while idx < 32 * _8266:
                                        mem[_7784 + ceil32(return_data.size) + idx + 32] = mem[_7870 + _7784 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8266) + _7784 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7784 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7784 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7784 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7784 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7784 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _7785 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7785 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8016 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8159 = mem[_8016]
                                    require mem[_8016] <= 4294967296
                                    require mem[_8016] + 32 <= return_data.size
                                    require mem[mem[_8016] + _8016] <= 4294967296 and mem[_8016] + (32 * mem[mem[_8016] + _8016]) + 32 <= return_data.size
                                    mem[_8016 + ceil32(return_data.size)] = mem[mem[_8016] + _8016]
                                    _8588 = mem[_8159 + _8016]
                                    idx = 0
                                    while idx < 32 * _8588:
                                        mem[_8016 + ceil32(return_data.size) + idx + 32] = mem[_8159 + _8016 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8588) + _8016 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8016 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8016 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8016 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8016 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8016 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _7788 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7788 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8017 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8161 = mem[_8017]
                                    require mem[_8017] <= 4294967296
                                    require mem[_8017] + 32 <= return_data.size
                                    require mem[mem[_8017] + _8017] <= 4294967296 and mem[_8017] + (32 * mem[mem[_8017] + _8017]) + 32 <= return_data.size
                                    mem[_8017 + ceil32(return_data.size)] = mem[mem[_8017] + _8017]
                                    _8589 = mem[_8161 + _8017]
                                    idx = 0
                                    while idx < 32 * _8589:
                                        mem[_8017 + ceil32(return_data.size) + idx + 32] = mem[_8161 + _8017 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8589) + _8017 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8017 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8017 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8017 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8017 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8017 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _8018 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _8018 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8267 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8434 = mem[_8267]
                                    require mem[_8267] <= 4294967296
                                    require mem[_8267] + 32 <= return_data.size
                                    require mem[mem[_8267] + _8267] <= 4294967296 and mem[_8267] + (32 * mem[mem[_8267] + _8267]) + 32 <= return_data.size
                                    mem[_8267 + ceil32(return_data.size)] = mem[mem[_8267] + _8267]
                                    _9031 = mem[_8434 + _8267]
                                    idx = 0
                                    while idx < 32 * _9031:
                                        mem[_8267 + ceil32(return_data.size) + idx + 32] = mem[_8434 + _8267 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _9031) + _8267 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8267 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8267 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8267 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8267 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8267 + ceil32(return_data.size) + 64]
                    else:
                        if not mem[460 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_5822)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_5821), address(_5822)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_5821) == address(_5822):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _7574 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7574 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7791 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7873 = mem[_7791]
                                    require mem[_7791] <= 4294967296
                                    require mem[_7791] + 32 <= return_data.size
                                    require mem[mem[_7791] + _7791] <= 4294967296 and mem[_7791] + (32 * mem[mem[_7791] + _7791]) + 32 <= return_data.size
                                    mem[_7791 + ceil32(return_data.size)] = mem[mem[_7791] + _7791]
                                    _8268 = mem[_7873 + _7791]
                                    idx = 0
                                    while idx < 32 * _8268:
                                        mem[_7791 + ceil32(return_data.size) + idx + 32] = mem[_7873 + _7791 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8268) + _7791 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7791 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7791 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7791 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7791 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7791 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _7792 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7792 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8021 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8164 = mem[_8021]
                                    require mem[_8021] <= 4294967296
                                    require mem[_8021] + 32 <= return_data.size
                                    require mem[mem[_8021] + _8021] <= 4294967296 and mem[_8021] + (32 * mem[mem[_8021] + _8021]) + 32 <= return_data.size
                                    mem[_8021 + ceil32(return_data.size)] = mem[mem[_8021] + _8021]
                                    _8592 = mem[_8164 + _8021]
                                    idx = 0
                                    while idx < 32 * _8592:
                                        mem[_8021 + ceil32(return_data.size) + idx + 32] = mem[_8164 + _8021 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8592) + _8021 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8021 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8021 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8021 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8021 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8021 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _7795 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7795 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8022 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8166 = mem[_8022]
                                    require mem[_8022] <= 4294967296
                                    require mem[_8022] + 32 <= return_data.size
                                    require mem[mem[_8022] + _8022] <= 4294967296 and mem[_8022] + (32 * mem[mem[_8022] + _8022]) + 32 <= return_data.size
                                    mem[_8022 + ceil32(return_data.size)] = mem[mem[_8022] + _8022]
                                    _8593 = mem[_8166 + _8022]
                                    idx = 0
                                    while idx < 32 * _8593:
                                        mem[_8022 + ceil32(return_data.size) + idx + 32] = mem[_8166 + _8022 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8593) + _8022 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8022 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8022 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8022 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8022 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8022 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _8023 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _8023 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8269 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8438 = mem[_8269]
                                    require mem[_8269] <= 4294967296
                                    require mem[_8269] + 32 <= return_data.size
                                    require mem[mem[_8269] + _8269] <= 4294967296 and mem[_8269] + (32 * mem[mem[_8269] + _8269]) + 32 <= return_data.size
                                    mem[_8269 + ceil32(return_data.size)] = mem[mem[_8269] + _8269]
                                    _9038 = mem[_8438 + _8269]
                                    idx = 0
                                    while idx < 32 * _9038:
                                        mem[_8269 + ceil32(return_data.size) + idx + 32] = mem[_8438 + _8269 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _9038) + _8269 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8269 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8269 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8269 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8269 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8269 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _7577 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7577 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7798 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7876 = mem[_7798]
                                    require mem[_7798] <= 4294967296
                                    require mem[_7798] + 32 <= return_data.size
                                    require mem[mem[_7798] + _7798] <= 4294967296 and mem[_7798] + (32 * mem[mem[_7798] + _7798]) + 32 <= return_data.size
                                    mem[_7798 + ceil32(return_data.size)] = mem[mem[_7798] + _7798]
                                    _8270 = mem[_7876 + _7798]
                                    idx = 0
                                    while idx < 32 * _8270:
                                        mem[_7798 + ceil32(return_data.size) + idx + 32] = mem[_7876 + _7798 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8270) + _7798 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7798 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7798 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7798 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7798 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7798 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _7799 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7799 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8026 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8169 = mem[_8026]
                                    require mem[_8026] <= 4294967296
                                    require mem[_8026] + 32 <= return_data.size
                                    require mem[mem[_8026] + _8026] <= 4294967296 and mem[_8026] + (32 * mem[mem[_8026] + _8026]) + 32 <= return_data.size
                                    mem[_8026 + ceil32(return_data.size)] = mem[mem[_8026] + _8026]
                                    _8596 = mem[_8169 + _8026]
                                    idx = 0
                                    while idx < 32 * _8596:
                                        mem[_8026 + ceil32(return_data.size) + idx + 32] = mem[_8169 + _8026 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8596) + _8026 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8026 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8026 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8026 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8026 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8026 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _7802 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7802 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8027 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8171 = mem[_8027]
                                    require mem[_8027] <= 4294967296
                                    require mem[_8027] + 32 <= return_data.size
                                    require mem[mem[_8027] + _8027] <= 4294967296 and mem[_8027] + (32 * mem[mem[_8027] + _8027]) + 32 <= return_data.size
                                    mem[_8027 + ceil32(return_data.size)] = mem[mem[_8027] + _8027]
                                    _8597 = mem[_8171 + _8027]
                                    idx = 0
                                    while idx < 32 * _8597:
                                        mem[_8027 + ceil32(return_data.size) + idx + 32] = mem[_8171 + _8027 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8597) + _8027 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8027 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8027 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8027 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8027 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8027 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _8028 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _8028 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8271 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8442 = mem[_8271]
                                    require mem[_8271] <= 4294967296
                                    require mem[_8271] + 32 <= return_data.size
                                    require mem[mem[_8271] + _8271] <= 4294967296 and mem[_8271] + (32 * mem[mem[_8271] + _8271]) + 32 <= return_data.size
                                    mem[_8271 + ceil32(return_data.size)] = mem[mem[_8271] + _8271]
                                    _9045 = mem[_8442 + _8271]
                                    idx = 0
                                    while idx < 32 * _9045:
                                        mem[_8271 + ceil32(return_data.size) + idx + 32] = mem[_8442 + _8271 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _9045) + _8271 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8271 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8271 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8271 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8271 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8271 + ceil32(return_data.size) + 64]
            else:
                mem[320] = mem[288]
                mem[288] = 0
                if cd[132] >= 100:
                    _5736 = mem[320]
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 68] = owner
                    mem[mem[64] + 100] = cd[260]
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 196).length
                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value _5736 wei
                         gas gas_remaining wei
                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5786 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5813 = mem[_5786]
                    require mem[_5786] <= 4294967296
                    require mem[_5786] + 32 <= return_data.size
                    require mem[mem[_5786] + _5786] <= 4294967296 and mem[_5786] + (32 * mem[mem[_5786] + _5786]) + 32 <= return_data.size
                    mem[_5786 + ceil32(return_data.size)] = mem[mem[_5786] + _5786]
                    _5895 = mem[_5813 + _5786]
                    idx = 0
                    while idx < 32 * _5895:
                        mem[_5786 + ceil32(return_data.size) + idx + 32] = mem[_5813 + _5786 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[64] = (32 * _5895) + _5786 + ceil32(return_data.size) + 32
                    if not mem[s]:
                        s = _5786 + ceil32(return_data.size)
                        continue 
                    require 0 < mem[_5786 + ceil32(return_data.size)]
                    require 0 < mem[s]
                    mem[s + 32] = mem[s + 32] + mem[_5786 + ceil32(return_data.size) + 32]
                    require 1 < mem[_5786 + ceil32(return_data.size)]
                    require 1 < mem[s]
                    mem[s + 64] = mem[s + 64] + mem[_5786 + ceil32(return_data.size) + 64]
                else:
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5816 = mem[416]
                    _5817 = mem[448]
                    if mem[428 len 20] == mem[460 len 20]:
                        revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                    if mem[428 len 20] < mem[460 len 20]:
                        if not mem[428 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_5817)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_5816), address(_5817)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_5816) == address(_5816):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _7556 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7556 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7749 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7855 = mem[_7749]
                                    require mem[_7749] <= 4294967296
                                    require mem[_7749] + 32 <= return_data.size
                                    require mem[mem[_7749] + _7749] <= 4294967296 and mem[_7749] + (32 * mem[mem[_7749] + _7749]) + 32 <= return_data.size
                                    mem[_7749 + ceil32(return_data.size)] = mem[mem[_7749] + _7749]
                                    _8256 = mem[_7855 + _7749]
                                    idx = 0
                                    while idx < 32 * _8256:
                                        mem[_7749 + ceil32(return_data.size) + idx + 32] = mem[_7855 + _7749 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8256) + _7749 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7749 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7749 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7749 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7749 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7749 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _7750 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7750 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7991 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8134 = mem[_7991]
                                    require mem[_7991] <= 4294967296
                                    require mem[_7991] + 32 <= return_data.size
                                    require mem[mem[_7991] + _7991] <= 4294967296 and mem[_7991] + (32 * mem[mem[_7991] + _7991]) + 32 <= return_data.size
                                    mem[_7991 + ceil32(return_data.size)] = mem[mem[_7991] + _7991]
                                    _8568 = mem[_8134 + _7991]
                                    idx = 0
                                    while idx < 32 * _8568:
                                        mem[_7991 + ceil32(return_data.size) + idx + 32] = mem[_8134 + _7991 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8568) + _7991 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7991 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7991 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7991 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7991 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7991 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _7753 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7753 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7992 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8136 = mem[_7992]
                                    require mem[_7992] <= 4294967296
                                    require mem[_7992] + 32 <= return_data.size
                                    require mem[mem[_7992] + _7992] <= 4294967296 and mem[_7992] + (32 * mem[mem[_7992] + _7992]) + 32 <= return_data.size
                                    mem[_7992 + ceil32(return_data.size)] = mem[mem[_7992] + _7992]
                                    _8569 = mem[_8136 + _7992]
                                    idx = 0
                                    while idx < 32 * _8569:
                                        mem[_7992 + ceil32(return_data.size) + idx + 32] = mem[_8136 + _7992 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8569) + _7992 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7992 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7992 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7992 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7992 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7992 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _7993 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7993 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8257 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8414 = mem[_8257]
                                    require mem[_8257] <= 4294967296
                                    require mem[_8257] + 32 <= return_data.size
                                    require mem[mem[_8257] + _8257] <= 4294967296 and mem[_8257] + (32 * mem[mem[_8257] + _8257]) + 32 <= return_data.size
                                    mem[_8257 + ceil32(return_data.size)] = mem[mem[_8257] + _8257]
                                    _8996 = mem[_8414 + _8257]
                                    idx = 0
                                    while idx < 32 * _8996:
                                        mem[_8257 + ceil32(return_data.size) + idx + 32] = mem[_8414 + _8257 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8996) + _8257 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8257 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8257 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8257 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8257 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8257 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _7559 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7559 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7756 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7858 = mem[_7756]
                                    require mem[_7756] <= 4294967296
                                    require mem[_7756] + 32 <= return_data.size
                                    require mem[mem[_7756] + _7756] <= 4294967296 and mem[_7756] + (32 * mem[mem[_7756] + _7756]) + 32 <= return_data.size
                                    mem[_7756 + ceil32(return_data.size)] = mem[mem[_7756] + _7756]
                                    _8258 = mem[_7858 + _7756]
                                    idx = 0
                                    while idx < 32 * _8258:
                                        mem[_7756 + ceil32(return_data.size) + idx + 32] = mem[_7858 + _7756 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8258) + _7756 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7756 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7756 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7756 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7756 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7756 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _7757 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7757 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7996 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8139 = mem[_7996]
                                    require mem[_7996] <= 4294967296
                                    require mem[_7996] + 32 <= return_data.size
                                    require mem[mem[_7996] + _7996] <= 4294967296 and mem[_7996] + (32 * mem[mem[_7996] + _7996]) + 32 <= return_data.size
                                    mem[_7996 + ceil32(return_data.size)] = mem[mem[_7996] + _7996]
                                    _8572 = mem[_8139 + _7996]
                                    idx = 0
                                    while idx < 32 * _8572:
                                        mem[_7996 + ceil32(return_data.size) + idx + 32] = mem[_8139 + _7996 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8572) + _7996 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7996 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7996 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7996 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7996 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7996 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _7760 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7760 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7997 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8141 = mem[_7997]
                                    require mem[_7997] <= 4294967296
                                    require mem[_7997] + 32 <= return_data.size
                                    require mem[mem[_7997] + _7997] <= 4294967296 and mem[_7997] + (32 * mem[mem[_7997] + _7997]) + 32 <= return_data.size
                                    mem[_7997 + ceil32(return_data.size)] = mem[mem[_7997] + _7997]
                                    _8573 = mem[_8141 + _7997]
                                    idx = 0
                                    while idx < 32 * _8573:
                                        mem[_7997 + ceil32(return_data.size) + idx + 32] = mem[_8141 + _7997 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8573) + _7997 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7997 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7997 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7997 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7997 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7997 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _7998 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7998 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8259 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8418 = mem[_8259]
                                    require mem[_8259] <= 4294967296
                                    require mem[_8259] + 32 <= return_data.size
                                    require mem[mem[_8259] + _8259] <= 4294967296 and mem[_8259] + (32 * mem[mem[_8259] + _8259]) + 32 <= return_data.size
                                    mem[_8259 + ceil32(return_data.size)] = mem[mem[_8259] + _8259]
                                    _9003 = mem[_8418 + _8259]
                                    idx = 0
                                    while idx < 32 * _9003:
                                        mem[_8259 + ceil32(return_data.size) + idx + 32] = mem[_8418 + _8259 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _9003) + _8259 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8259 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8259 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8259 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8259 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8259 + ceil32(return_data.size) + 64]
                    else:
                        if not mem[460 len 20]:
                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                        mem[mem[64] + 4] = mem[428 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_5817)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(_5816), address(_5817)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if mem[320] <= 0:
                            revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                        if address(_5816) == address(_5817):
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _7562 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7562 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7763 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7861 = mem[_7763]
                                    require mem[_7763] <= 4294967296
                                    require mem[_7763] + 32 <= return_data.size
                                    require mem[mem[_7763] + _7763] <= 4294967296 and mem[_7763] + (32 * mem[mem[_7763] + _7763]) + 32 <= return_data.size
                                    mem[_7763 + ceil32(return_data.size)] = mem[mem[_7763] + _7763]
                                    _8260 = mem[_7861 + _7763]
                                    idx = 0
                                    while idx < 32 * _8260:
                                        mem[_7763 + ceil32(return_data.size) + idx + 32] = mem[_7861 + _7763 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8260) + _7763 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7763 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7763 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7763 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7763 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7763 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _7764 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7764 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8001 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8144 = mem[_8001]
                                    require mem[_8001] <= 4294967296
                                    require mem[_8001] + 32 <= return_data.size
                                    require mem[mem[_8001] + _8001] <= 4294967296 and mem[_8001] + (32 * mem[mem[_8001] + _8001]) + 32 <= return_data.size
                                    mem[_8001 + ceil32(return_data.size)] = mem[mem[_8001] + _8001]
                                    _8576 = mem[_8144 + _8001]
                                    idx = 0
                                    while idx < 32 * _8576:
                                        mem[_8001 + ceil32(return_data.size) + idx + 32] = mem[_8144 + _8001 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8576) + _8001 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8001 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8001 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8001 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8001 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8001 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[32])
                                if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[0])
                                if not -cd[132] + 100:
                                    _7767 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7767 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8002 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8146 = mem[_8002]
                                    require mem[_8002] <= 4294967296
                                    require mem[_8002] + 32 <= return_data.size
                                    require mem[mem[_8002] + _8002] <= 4294967296 and mem[_8002] + (32 * mem[mem[_8002] + _8002]) + 32 <= return_data.size
                                    mem[_8002 + ceil32(return_data.size)] = mem[mem[_8002] + _8002]
                                    _8577 = mem[_8146 + _8002]
                                    idx = 0
                                    while idx < 32 * _8577:
                                        mem[_8002 + ceil32(return_data.size) + idx + 32] = mem[_8146 + _8002 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8577) + _8002 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8002 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8002 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8002 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8002 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8002 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                    _8003 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _8003 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8261 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8422 = mem[_8261]
                                    require mem[_8261] <= 4294967296
                                    require mem[_8261] + 32 <= return_data.size
                                    require mem[mem[_8261] + _8261] <= 4294967296 and mem[_8261] + (32 * mem[mem[_8261] + _8261]) + 32 <= return_data.size
                                    mem[_8261 + ceil32(return_data.size)] = mem[mem[_8261] + _8261]
                                    _9010 = mem[_8422 + _8261]
                                    idx = 0
                                    while idx < 32 * _9010:
                                        mem[_8261 + ceil32(return_data.size) + idx + 32] = mem[_8422 + _8261 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _9010) + _8261 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8261 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8261 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8261 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8261 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8261 + ceil32(return_data.size) + 64]
                        else:
                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _7565 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7565 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7770 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7864 = mem[_7770]
                                    require mem[_7770] <= 4294967296
                                    require mem[_7770] + 32 <= return_data.size
                                    require mem[mem[_7770] + _7770] <= 4294967296 and mem[_7770] + (32 * mem[mem[_7770] + _7770]) + 32 <= return_data.size
                                    mem[_7770 + ceil32(return_data.size)] = mem[mem[_7770] + _7770]
                                    _8262 = mem[_7864 + _7770]
                                    idx = 0
                                    while idx < 32 * _8262:
                                        mem[_7770 + ceil32(return_data.size) + idx + 32] = mem[_7864 + _7770 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8262) + _7770 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _7770 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_7770 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_7770 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_7770 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_7770 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _7771 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7771 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8006 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8149 = mem[_8006]
                                    require mem[_8006] <= 4294967296
                                    require mem[_8006] + 32 <= return_data.size
                                    require mem[mem[_8006] + _8006] <= 4294967296 and mem[_8006] + (32 * mem[mem[_8006] + _8006]) + 32 <= return_data.size
                                    mem[_8006 + ceil32(return_data.size)] = mem[mem[_8006] + _8006]
                                    _8580 = mem[_8149 + _8006]
                                    idx = 0
                                    while idx < 32 * _8580:
                                        mem[_8006 + ceil32(return_data.size) + idx + 32] = mem[_8149 + _8006 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8580) + _8006 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8006 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8006 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8006 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8006 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8006 + ceil32(return_data.size) + 64]
                            else:
                                require Mask(112, 0, ext_call.return_data[0])
                                if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                    revert with 0, 'ds-math-mul-overflow'
                                require Mask(112, 0, ext_call.return_data[32])
                                if not -cd[132] + 100:
                                    _7774 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _7774 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8007 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8151 = mem[_8007]
                                    require mem[_8007] <= 4294967296
                                    require mem[_8007] + 32 <= return_data.size
                                    require mem[mem[_8007] + _8007] <= 4294967296 and mem[_8007] + (32 * mem[mem[_8007] + _8007]) + 32 <= return_data.size
                                    mem[_8007 + ceil32(return_data.size)] = mem[mem[_8007] + _8007]
                                    _8581 = mem[_8151 + _8007]
                                    idx = 0
                                    while idx < 32 * _8581:
                                        mem[_8007 + ceil32(return_data.size) + idx + 32] = mem[_8151 + _8007 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _8581) + _8007 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8007 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8007 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8007 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8007 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8007 + ceil32(return_data.size) + 64]
                                else:
                                    require -cd[132] + 100
                                    if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                        revert with 0, 'ds-math-mul-overflow'
                                    mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                    _8008 = mem[320]
                                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0
                                    mem[mem[64] + 68] = owner
                                    mem[mem[64] + 100] = cd[260]
                                    mem[mem[64] + 36] = 128
                                    mem[mem[64] + 132] = ('cd', 196).length
                                    mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                    mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value _8008 wei
                                         gas gas_remaining wei
                                        args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8263 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _8426 = mem[_8263]
                                    require mem[_8263] <= 4294967296
                                    require mem[_8263] + 32 <= return_data.size
                                    require mem[mem[_8263] + _8263] <= 4294967296 and mem[_8263] + (32 * mem[mem[_8263] + _8263]) + 32 <= return_data.size
                                    mem[_8263 + ceil32(return_data.size)] = mem[mem[_8263] + _8263]
                                    _9017 = mem[_8426 + _8263]
                                    idx = 0
                                    while idx < 32 * _9017:
                                        mem[_8263 + ceil32(return_data.size) + idx + 32] = mem[_8426 + _8263 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[64] = (32 * _9017) + _8263 + ceil32(return_data.size) + 32
                                    if not mem[s]:
                                        s = _8263 + ceil32(return_data.size)
                                        continue 
                                    require 0 < mem[_8263 + ceil32(return_data.size)]
                                    require 0 < mem[s]
                                    mem[s + 32] = mem[s + 32] + mem[_8263 + ceil32(return_data.size) + 32]
                                    require 1 < mem[_8263 + ceil32(return_data.size)]
                                    require 1 < mem[s]
                                    mem[s + 64] = mem[s + 64] + mem[_8263 + ceil32(return_data.size) + 64]
            s = s
            continue 
        if mem[352] <= 0:
            if not cd[164]:
                Mask(96, 0, stor0.field_160) = 1
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[s]
                _5734 = mem[s]
                mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
                return 32, mem[mem[64] + 32 len (32 * _5734) + 32]
            _5697 = mem[384]
            _5698 = mem[448]
            mem[mem[64] + 4] = owner
            require ext_code.size(address(_5698))
            staticcall address(_5698).0x70a08231 with:
                    gas gas_remaining wei
                   args owner
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - _5697 != ext_call.return_data[0] - _5697:
                revert with 0, 'ds-math-mul-overflow'
            _6131 = mem[448]
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = ext_call.return_data[0] - _5697 / 100
            require ext_code.size(address(_6131))
            call address(_6131).0x23b872dd with:
                 gas gas_remaining wei
                args owner, address(this.address), ext_call.return_data[0] - _5697 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _6289 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_6289 + 32 len 64] = call.data[calldata.size len 64]
            require 0 < mem[_6289]
            mem[_6289 + 32] = mem[460 len 20]
            require 1 < mem[_6289]
            mem[_6289 + 64] = mem[428 len 20]
            require ext_code.size(mem[460 len 20])
            staticcall mem[460 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < mem[_6289]
            require ext_code.size(mem[_6289 + 44 len 20])
            call mem[_6289 + 44 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(cd[4]), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_6289 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[_6289 + 100] = ext_call.return_data[0]
            mem[_6289 + 132] = 0
            mem[_6289 + 196] = owner
            mem[_6289 + 228] = block.timestamp
            mem[_6289 + 164] = 160
            mem[_6289 + 260] = mem[_6289]
            mem[_6289 + 292 len floor32(mem[_6289])] = mem[_6289 + 32 len floor32(mem[_6289])]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_6289 + 260 len (32 * mem[_6289]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            Mask(96, 0, stor0.field_160) = 1
            mem[_6289 + 96] = 32
            mem[_6289 + 128] = mem[s]
            _12386 = mem[s]
            mem[_6289 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return memory
              from mem[64]
               len (32 * _12386) + _6289 + -mem[64] + 160
        _5677 = mem[448]
        mem[mem[64] + 4] = owner
        require ext_code.size(address(_5677))
        staticcall address(_5677).0x70a08231 with:
                gas gas_remaining wei
               args owner
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - mem[384] < mem[352]:
            revert with 0, 'burn exceeds upper limit'
        if not cd[164]:
            Mask(96, 0, stor0.field_160) = 1
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[s]
            _5864 = mem[s]
            mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return 32, mem[mem[64] + 32 len (32 * _5864) + 32]
        _5836 = mem[384]
        _5837 = mem[448]
        mem[mem[64] + 4] = owner
        require ext_code.size(address(_5837))
        staticcall address(_5837).0x70a08231 with:
                gas gas_remaining wei
               args owner
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - _5836 != ext_call.return_data[0] - _5836:
            revert with 0, 'ds-math-mul-overflow'
        _6348 = mem[448]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = ext_call.return_data[0] - _5836 / 100
        require ext_code.size(address(_6348))
        call address(_6348).0x23b872dd with:
             gas gas_remaining wei
            args owner, address(this.address), ext_call.return_data[0] - _5836 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _6567 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_6567 + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[_6567]
        mem[_6567 + 32] = mem[460 len 20]
        require 1 < mem[_6567]
        mem[_6567 + 64] = mem[428 len 20]
        require ext_code.size(mem[460 len 20])
        staticcall mem[460 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < mem[_6567]
        require ext_code.size(mem[_6567 + 44 len 20])
        call mem[_6567 + 44 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_6567 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[_6567 + 100] = ext_call.return_data[0]
        mem[_6567 + 132] = 0
        mem[_6567 + 196] = owner
        mem[_6567 + 228] = block.timestamp
        mem[_6567 + 164] = 160
        mem[_6567 + 260] = mem[_6567]
        mem[_6567 + 292 len floor32(mem[_6567])] = mem[_6567 + 32 len floor32(mem[_6567])]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_6567 + 260 len (32 * mem[_6567]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        Mask(96, 0, stor0.field_160) = 1
        mem[_6567 + 96] = 32
        mem[_6567 + 128] = mem[s]
        _12389 = mem[s]
        mem[_6567 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
        return memory
          from mem[64]
           len (32 * _12389) + _6567 + -mem[64] + 160
    mem[480] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[484] = cd[100]
    mem[516] = 64
    mem[548] = ('cd', 196).length
    mem[580 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
    mem[(32 * ('cd', 196).length) + 580] = 0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[100], Array(len=('cd', 196).length, data=call.data[cd[196] + 36 len floor32(('cd', 196).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 480
    require return_data.size >= 32
    _110 = mem[480 len 4], Mask(224, 32, cd[100]) >> 32
    require mem[480 len 4], Mask(224, 32, cd[100]) >> 32 <= 4294967296
    require mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 32 <= return_data.size
    require mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480] <= 4294967296 and mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 480] = mem[mem[480 len 4], Mask(224, 32, cd[100]) >> 32 + 480]
    _167 = mem[_110 + 480]
    mem[ceil32(return_data.size) + 512 len floor32(mem[_110 + 480])] = mem[_110 + 512 len floor32(mem[_110 + 480])]
    mem[64] = (32 * _167) + ceil32(return_data.size) + 512
    require 0 < mem[ceil32(return_data.size) + 480]
    _5682 = mem[ceil32(return_data.size) + 512]
    mem[320] = mem[ceil32(return_data.size) + 512]
    mem[352] = 0
    mem[(32 * _167) + ceil32(return_data.size) + 516] = owner
    require ext_code.size(address(('cd', 196)[1]))
    staticcall address(('cd', 196)[1]).0x70a08231 with:
            gas gas_remaining wei
           args owner
    mem[(32 * _167) + ceil32(return_data.size) + 512] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[384] = ext_call.return_data[0]
    s = 96
    while msg.value > 0:
        if mem[288] >= _5682:
            mem[288] = mem[288] - _5682
            if cd[132] >= 100:
                _12065 = mem[320]
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 68] = owner
                mem[mem[64] + 100] = cd[260]
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = ('cd', 196).length
                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value _12065 wei
                     gas gas_remaining wei
                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12431 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12458 = mem[_12431]
                require mem[_12431] <= 4294967296
                require mem[_12431] + 32 <= return_data.size
                require mem[mem[_12431] + _12431] <= 4294967296 and mem[_12431] + (32 * mem[mem[_12431] + _12431]) + 32 <= return_data.size
                mem[_12431 + ceil32(return_data.size)] = mem[mem[_12431] + _12431]
                _12520 = mem[_12458 + _12431]
                idx = 0
                while idx < 32 * _12520:
                    mem[_12431 + ceil32(return_data.size) + idx + 32] = mem[_12458 + _12431 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _12520) + _12431 + ceil32(return_data.size) + 32
                if not mem[s]:
                    s = _12431 + ceil32(return_data.size)
                    continue 
                require 0 < mem[_12431 + ceil32(return_data.size)]
                require 0 < mem[s]
                mem[s + 32] = mem[s + 32] + mem[_12431 + ceil32(return_data.size) + 32]
                require 1 < mem[_12431 + ceil32(return_data.size)]
                require 1 < mem[s]
                mem[s + 64] = mem[s + 64] + mem[_12431 + ceil32(return_data.size) + 64]
            else:
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _12461 = mem[416]
                _12462 = mem[448]
                if mem[428 len 20] == mem[460 len 20]:
                    revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[428 len 20] < mem[460 len 20]:
                    if not mem[428 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[428 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_12462)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(_12461), address(_12462)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if mem[320] <= 0:
                        revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                    if address(_12461) == address(_12461):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if not Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if not -cd[132] + 100:
                                _13378 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13378 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13578 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13666 = mem[_13578]
                                require mem[_13578] <= 4294967296
                                require mem[_13578] + 32 <= return_data.size
                                require mem[mem[_13578] + _13578] <= 4294967296 and mem[_13578] + (32 * mem[mem[_13578] + _13578]) + 32 <= return_data.size
                                mem[_13578 + ceil32(return_data.size)] = mem[mem[_13578] + _13578]
                                _13958 = mem[_13666 + _13578]
                                idx = 0
                                while idx < 32 * _13958:
                                    mem[_13578 + ceil32(return_data.size) + idx + 32] = mem[_13666 + _13578 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _13958) + _13578 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13578 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13578 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13578 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13578 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13578 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                _13579 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13579 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13778 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13899 = mem[_13778]
                                require mem[_13778] <= 4294967296
                                require mem[_13778] + 32 <= return_data.size
                                require mem[mem[_13778] + _13778] <= 4294967296 and mem[_13778] + (32 * mem[mem[_13778] + _13778]) + 32 <= return_data.size
                                mem[_13778 + ceil32(return_data.size)] = mem[mem[_13778] + _13778]
                                _14144 = mem[_13899 + _13778]
                                idx = 0
                                while idx < 32 * _14144:
                                    mem[_13778 + ceil32(return_data.size) + idx + 32] = mem[_13899 + _13778 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14144) + _13778 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13778 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13778 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13778 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13778 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13778 + ceil32(return_data.size) + 64]
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                revert with 0, 'ds-math-mul-overflow'
                            require Mask(112, 0, ext_call.return_data[0])
                            if not -cd[132] + 100:
                                _13582 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13582 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13779 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13901 = mem[_13779]
                                require mem[_13779] <= 4294967296
                                require mem[_13779] + 32 <= return_data.size
                                require mem[mem[_13779] + _13779] <= 4294967296 and mem[_13779] + (32 * mem[mem[_13779] + _13779]) + 32 <= return_data.size
                                mem[_13779 + ceil32(return_data.size)] = mem[mem[_13779] + _13779]
                                _14145 = mem[_13901 + _13779]
                                idx = 0
                                while idx < 32 * _14145:
                                    mem[_13779 + ceil32(return_data.size) + idx + 32] = mem[_13901 + _13779 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14145) + _13779 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13779 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13779 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13779 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13779 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13779 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                _13780 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13780 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13959 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14048 = mem[_13959]
                                require mem[_13959] <= 4294967296
                                require mem[_13959] + 32 <= return_data.size
                                require mem[mem[_13959] + _13959] <= 4294967296 and mem[_13959] + (32 * mem[mem[_13959] + _13959]) + 32 <= return_data.size
                                mem[_13959 + ceil32(return_data.size)] = mem[mem[_13959] + _13959]
                                _14352 = mem[_14048 + _13959]
                                idx = 0
                                while idx < 32 * _14352:
                                    mem[_13959 + ceil32(return_data.size) + idx + 32] = mem[_14048 + _13959 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14352) + _13959 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13959 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13959 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13959 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13959 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13959 + ceil32(return_data.size) + 64]
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if not -cd[132] + 100:
                                _13381 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13381 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13585 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13669 = mem[_13585]
                                require mem[_13585] <= 4294967296
                                require mem[_13585] + 32 <= return_data.size
                                require mem[mem[_13585] + _13585] <= 4294967296 and mem[_13585] + (32 * mem[mem[_13585] + _13585]) + 32 <= return_data.size
                                mem[_13585 + ceil32(return_data.size)] = mem[mem[_13585] + _13585]
                                _13960 = mem[_13669 + _13585]
                                idx = 0
                                while idx < 32 * _13960:
                                    mem[_13585 + ceil32(return_data.size) + idx + 32] = mem[_13669 + _13585 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _13960) + _13585 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13585 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13585 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13585 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13585 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13585 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                _13586 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13586 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13783 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13904 = mem[_13783]
                                require mem[_13783] <= 4294967296
                                require mem[_13783] + 32 <= return_data.size
                                require mem[mem[_13783] + _13783] <= 4294967296 and mem[_13783] + (32 * mem[mem[_13783] + _13783]) + 32 <= return_data.size
                                mem[_13783 + ceil32(return_data.size)] = mem[mem[_13783] + _13783]
                                _14148 = mem[_13904 + _13783]
                                idx = 0
                                while idx < 32 * _14148:
                                    mem[_13783 + ceil32(return_data.size) + idx + 32] = mem[_13904 + _13783 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14148) + _13783 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13783 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13783 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13783 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13783 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13783 + ceil32(return_data.size) + 64]
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                revert with 0, 'ds-math-mul-overflow'
                            require Mask(112, 0, ext_call.return_data[32])
                            if not -cd[132] + 100:
                                _13589 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13589 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13784 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13906 = mem[_13784]
                                require mem[_13784] <= 4294967296
                                require mem[_13784] + 32 <= return_data.size
                                require mem[mem[_13784] + _13784] <= 4294967296 and mem[_13784] + (32 * mem[mem[_13784] + _13784]) + 32 <= return_data.size
                                mem[_13784 + ceil32(return_data.size)] = mem[mem[_13784] + _13784]
                                _14149 = mem[_13906 + _13784]
                                idx = 0
                                while idx < 32 * _14149:
                                    mem[_13784 + ceil32(return_data.size) + idx + 32] = mem[_13906 + _13784 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14149) + _13784 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13784 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13784 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13784 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13784 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13784 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                _13785 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13785 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13961 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14052 = mem[_13961]
                                require mem[_13961] <= 4294967296
                                require mem[_13961] + 32 <= return_data.size
                                require mem[mem[_13961] + _13961] <= 4294967296 and mem[_13961] + (32 * mem[mem[_13961] + _13961]) + 32 <= return_data.size
                                mem[_13961 + ceil32(return_data.size)] = mem[mem[_13961] + _13961]
                                _14359 = mem[_14052 + _13961]
                                idx = 0
                                while idx < 32 * _14359:
                                    mem[_13961 + ceil32(return_data.size) + idx + 32] = mem[_14052 + _13961 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14359) + _13961 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13961 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13961 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13961 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13961 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13961 + ceil32(return_data.size) + 64]
                else:
                    if not mem[460 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[428 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_12462)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(_12461), address(_12462)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if mem[320] <= 0:
                        revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                    if address(_12461) == address(_12462):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if not Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if not -cd[132] + 100:
                                _13384 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13384 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13592 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13672 = mem[_13592]
                                require mem[_13592] <= 4294967296
                                require mem[_13592] + 32 <= return_data.size
                                require mem[mem[_13592] + _13592] <= 4294967296 and mem[_13592] + (32 * mem[mem[_13592] + _13592]) + 32 <= return_data.size
                                mem[_13592 + ceil32(return_data.size)] = mem[mem[_13592] + _13592]
                                _13962 = mem[_13672 + _13592]
                                idx = 0
                                while idx < 32 * _13962:
                                    mem[_13592 + ceil32(return_data.size) + idx + 32] = mem[_13672 + _13592 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _13962) + _13592 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13592 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13592 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13592 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13592 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13592 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                _13593 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13593 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13788 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13909 = mem[_13788]
                                require mem[_13788] <= 4294967296
                                require mem[_13788] + 32 <= return_data.size
                                require mem[mem[_13788] + _13788] <= 4294967296 and mem[_13788] + (32 * mem[mem[_13788] + _13788]) + 32 <= return_data.size
                                mem[_13788 + ceil32(return_data.size)] = mem[mem[_13788] + _13788]
                                _14152 = mem[_13909 + _13788]
                                idx = 0
                                while idx < 32 * _14152:
                                    mem[_13788 + ceil32(return_data.size) + idx + 32] = mem[_13909 + _13788 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14152) + _13788 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13788 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13788 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13788 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13788 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13788 + ceil32(return_data.size) + 64]
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                revert with 0, 'ds-math-mul-overflow'
                            require Mask(112, 0, ext_call.return_data[0])
                            if not -cd[132] + 100:
                                _13596 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13596 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13789 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13911 = mem[_13789]
                                require mem[_13789] <= 4294967296
                                require mem[_13789] + 32 <= return_data.size
                                require mem[mem[_13789] + _13789] <= 4294967296 and mem[_13789] + (32 * mem[mem[_13789] + _13789]) + 32 <= return_data.size
                                mem[_13789 + ceil32(return_data.size)] = mem[mem[_13789] + _13789]
                                _14153 = mem[_13911 + _13789]
                                idx = 0
                                while idx < 32 * _14153:
                                    mem[_13789 + ceil32(return_data.size) + idx + 32] = mem[_13911 + _13789 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14153) + _13789 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13789 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13789 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13789 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13789 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13789 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                _13790 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13790 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13963 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14056 = mem[_13963]
                                require mem[_13963] <= 4294967296
                                require mem[_13963] + 32 <= return_data.size
                                require mem[mem[_13963] + _13963] <= 4294967296 and mem[_13963] + (32 * mem[mem[_13963] + _13963]) + 32 <= return_data.size
                                mem[_13963 + ceil32(return_data.size)] = mem[mem[_13963] + _13963]
                                _14366 = mem[_14056 + _13963]
                                idx = 0
                                while idx < 32 * _14366:
                                    mem[_13963 + ceil32(return_data.size) + idx + 32] = mem[_14056 + _13963 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14366) + _13963 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13963 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13963 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13963 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13963 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13963 + ceil32(return_data.size) + 64]
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if not -cd[132] + 100:
                                _13387 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13387 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13599 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13675 = mem[_13599]
                                require mem[_13599] <= 4294967296
                                require mem[_13599] + 32 <= return_data.size
                                require mem[mem[_13599] + _13599] <= 4294967296 and mem[_13599] + (32 * mem[mem[_13599] + _13599]) + 32 <= return_data.size
                                mem[_13599 + ceil32(return_data.size)] = mem[mem[_13599] + _13599]
                                _13964 = mem[_13675 + _13599]
                                idx = 0
                                while idx < 32 * _13964:
                                    mem[_13599 + ceil32(return_data.size) + idx + 32] = mem[_13675 + _13599 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _13964) + _13599 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13599 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13599 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13599 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13599 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13599 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                _13600 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13600 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13793 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13914 = mem[_13793]
                                require mem[_13793] <= 4294967296
                                require mem[_13793] + 32 <= return_data.size
                                require mem[mem[_13793] + _13793] <= 4294967296 and mem[_13793] + (32 * mem[mem[_13793] + _13793]) + 32 <= return_data.size
                                mem[_13793 + ceil32(return_data.size)] = mem[mem[_13793] + _13793]
                                _14156 = mem[_13914 + _13793]
                                idx = 0
                                while idx < 32 * _14156:
                                    mem[_13793 + ceil32(return_data.size) + idx + 32] = mem[_13914 + _13793 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14156) + _13793 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13793 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13793 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13793 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13793 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13793 + ceil32(return_data.size) + 64]
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                revert with 0, 'ds-math-mul-overflow'
                            require Mask(112, 0, ext_call.return_data[32])
                            if not -cd[132] + 100:
                                _13603 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13603 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13794 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13916 = mem[_13794]
                                require mem[_13794] <= 4294967296
                                require mem[_13794] + 32 <= return_data.size
                                require mem[mem[_13794] + _13794] <= 4294967296 and mem[_13794] + (32 * mem[mem[_13794] + _13794]) + 32 <= return_data.size
                                mem[_13794 + ceil32(return_data.size)] = mem[mem[_13794] + _13794]
                                _14157 = mem[_13916 + _13794]
                                idx = 0
                                while idx < 32 * _14157:
                                    mem[_13794 + ceil32(return_data.size) + idx + 32] = mem[_13916 + _13794 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14157) + _13794 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13794 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13794 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13794 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13794 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13794 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                _13795 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13795 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13965 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14060 = mem[_13965]
                                require mem[_13965] <= 4294967296
                                require mem[_13965] + 32 <= return_data.size
                                require mem[mem[_13965] + _13965] <= 4294967296 and mem[_13965] + (32 * mem[mem[_13965] + _13965]) + 32 <= return_data.size
                                mem[_13965 + ceil32(return_data.size)] = mem[mem[_13965] + _13965]
                                _14373 = mem[_14060 + _13965]
                                idx = 0
                                while idx < 32 * _14373:
                                    mem[_13965 + ceil32(return_data.size) + idx + 32] = mem[_14060 + _13965 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14373) + _13965 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13965 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13965 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13965 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13965 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13965 + ceil32(return_data.size) + 64]
        else:
            mem[320] = mem[288]
            mem[288] = 0
            if cd[132] >= 100:
                _12060 = mem[320]
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 68] = owner
                mem[mem[64] + 100] = cd[260]
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = ('cd', 196).length
                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value _12060 wei
                     gas gas_remaining wei
                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12429 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12453 = mem[_12429]
                require mem[_12429] <= 4294967296
                require mem[_12429] + 32 <= return_data.size
                require mem[mem[_12429] + _12429] <= 4294967296 and mem[_12429] + (32 * mem[mem[_12429] + _12429]) + 32 <= return_data.size
                mem[_12429 + ceil32(return_data.size)] = mem[mem[_12429] + _12429]
                _12517 = mem[_12453 + _12429]
                idx = 0
                while idx < 32 * _12517:
                    mem[_12429 + ceil32(return_data.size) + idx + 32] = mem[_12453 + _12429 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[64] = (32 * _12517) + _12429 + ceil32(return_data.size) + 32
                if not mem[s]:
                    s = _12429 + ceil32(return_data.size)
                    continue 
                require 0 < mem[_12429 + ceil32(return_data.size)]
                require 0 < mem[s]
                mem[s + 32] = mem[s + 32] + mem[_12429 + ceil32(return_data.size) + 32]
                require 1 < mem[_12429 + ceil32(return_data.size)]
                require 1 < mem[s]
                mem[s + 64] = mem[s + 64] + mem[_12429 + ceil32(return_data.size) + 64]
            else:
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _12456 = mem[416]
                _12457 = mem[448]
                if mem[428 len 20] == mem[460 len 20]:
                    revert with 0, 32, 35, 0x7350616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[428 len 20] < mem[460 len 20]:
                    if not mem[428 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[428 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_12457)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(_12456), address(_12457)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if mem[320] <= 0:
                        revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                    if address(_12456) == address(_12456):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if not Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if not -cd[132] + 100:
                                _13366 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13366 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13550 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13654 = mem[_13550]
                                require mem[_13550] <= 4294967296
                                require mem[_13550] + 32 <= return_data.size
                                require mem[mem[_13550] + _13550] <= 4294967296 and mem[_13550] + (32 * mem[mem[_13550] + _13550]) + 32 <= return_data.size
                                mem[_13550 + ceil32(return_data.size)] = mem[mem[_13550] + _13550]
                                _13950 = mem[_13654 + _13550]
                                idx = 0
                                while idx < 32 * _13950:
                                    mem[_13550 + ceil32(return_data.size) + idx + 32] = mem[_13654 + _13550 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _13950) + _13550 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13550 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13550 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13550 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13550 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13550 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                _13551 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13551 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13758 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13879 = mem[_13758]
                                require mem[_13758] <= 4294967296
                                require mem[_13758] + 32 <= return_data.size
                                require mem[mem[_13758] + _13758] <= 4294967296 and mem[_13758] + (32 * mem[mem[_13758] + _13758]) + 32 <= return_data.size
                                mem[_13758 + ceil32(return_data.size)] = mem[mem[_13758] + _13758]
                                _14128 = mem[_13879 + _13758]
                                idx = 0
                                while idx < 32 * _14128:
                                    mem[_13758 + ceil32(return_data.size) + idx + 32] = mem[_13879 + _13758 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14128) + _13758 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13758 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13758 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13758 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13758 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13758 + ceil32(return_data.size) + 64]
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                revert with 0, 'ds-math-mul-overflow'
                            require Mask(112, 0, ext_call.return_data[0])
                            if not -cd[132] + 100:
                                _13554 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13554 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13759 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13881 = mem[_13759]
                                require mem[_13759] <= 4294967296
                                require mem[_13759] + 32 <= return_data.size
                                require mem[mem[_13759] + _13759] <= 4294967296 and mem[_13759] + (32 * mem[mem[_13759] + _13759]) + 32 <= return_data.size
                                mem[_13759 + ceil32(return_data.size)] = mem[mem[_13759] + _13759]
                                _14129 = mem[_13881 + _13759]
                                idx = 0
                                while idx < 32 * _14129:
                                    mem[_13759 + ceil32(return_data.size) + idx + 32] = mem[_13881 + _13759 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14129) + _13759 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13759 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13759 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13759 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13759 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13759 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                _13760 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13760 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13951 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14032 = mem[_13951]
                                require mem[_13951] <= 4294967296
                                require mem[_13951] + 32 <= return_data.size
                                require mem[mem[_13951] + _13951] <= 4294967296 and mem[_13951] + (32 * mem[mem[_13951] + _13951]) + 32 <= return_data.size
                                mem[_13951 + ceil32(return_data.size)] = mem[mem[_13951] + _13951]
                                _14324 = mem[_14032 + _13951]
                                idx = 0
                                while idx < 32 * _14324:
                                    mem[_13951 + ceil32(return_data.size) + idx + 32] = mem[_14032 + _13951 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14324) + _13951 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13951 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13951 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13951 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13951 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13951 + ceil32(return_data.size) + 64]
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if not -cd[132] + 100:
                                _13369 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13369 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13557 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13657 = mem[_13557]
                                require mem[_13557] <= 4294967296
                                require mem[_13557] + 32 <= return_data.size
                                require mem[mem[_13557] + _13557] <= 4294967296 and mem[_13557] + (32 * mem[mem[_13557] + _13557]) + 32 <= return_data.size
                                mem[_13557 + ceil32(return_data.size)] = mem[mem[_13557] + _13557]
                                _13952 = mem[_13657 + _13557]
                                idx = 0
                                while idx < 32 * _13952:
                                    mem[_13557 + ceil32(return_data.size) + idx + 32] = mem[_13657 + _13557 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _13952) + _13557 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13557 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13557 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13557 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13557 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13557 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                _13558 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13558 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13763 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13884 = mem[_13763]
                                require mem[_13763] <= 4294967296
                                require mem[_13763] + 32 <= return_data.size
                                require mem[mem[_13763] + _13763] <= 4294967296 and mem[_13763] + (32 * mem[mem[_13763] + _13763]) + 32 <= return_data.size
                                mem[_13763 + ceil32(return_data.size)] = mem[mem[_13763] + _13763]
                                _14132 = mem[_13884 + _13763]
                                idx = 0
                                while idx < 32 * _14132:
                                    mem[_13763 + ceil32(return_data.size) + idx + 32] = mem[_13884 + _13763 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14132) + _13763 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13763 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13763 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13763 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13763 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13763 + ceil32(return_data.size) + 64]
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                revert with 0, 'ds-math-mul-overflow'
                            require Mask(112, 0, ext_call.return_data[32])
                            if not -cd[132] + 100:
                                _13561 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13561 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13764 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13886 = mem[_13764]
                                require mem[_13764] <= 4294967296
                                require mem[_13764] + 32 <= return_data.size
                                require mem[mem[_13764] + _13764] <= 4294967296 and mem[_13764] + (32 * mem[mem[_13764] + _13764]) + 32 <= return_data.size
                                mem[_13764 + ceil32(return_data.size)] = mem[mem[_13764] + _13764]
                                _14133 = mem[_13886 + _13764]
                                idx = 0
                                while idx < 32 * _14133:
                                    mem[_13764 + ceil32(return_data.size) + idx + 32] = mem[_13886 + _13764 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14133) + _13764 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13764 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13764 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13764 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13764 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13764 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                _13765 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13765 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13953 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14036 = mem[_13953]
                                require mem[_13953] <= 4294967296
                                require mem[_13953] + 32 <= return_data.size
                                require mem[mem[_13953] + _13953] <= 4294967296 and mem[_13953] + (32 * mem[mem[_13953] + _13953]) + 32 <= return_data.size
                                mem[_13953 + ceil32(return_data.size)] = mem[mem[_13953] + _13953]
                                _14331 = mem[_14036 + _13953]
                                idx = 0
                                while idx < 32 * _14331:
                                    mem[_13953 + ceil32(return_data.size) + idx + 32] = mem[_14036 + _13953 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14331) + _13953 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13953 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13953 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13953 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13953 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13953 + ceil32(return_data.size) + 64]
                else:
                    if not mem[460 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    mem[mem[64] + 4] = mem[428 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_12457)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(_12456), address(_12457)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if mem[320] <= 0:
                        revert with 0, 32, 35, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f414d4f554e, mem[mem[64] + 103 len 29]
                    if address(_12456) == address(_12457):
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if not Mask(112, 0, ext_call.return_data[32]):
                            require Mask(112, 0, ext_call.return_data[0])
                            if not -cd[132] + 100:
                                _13372 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13372 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13564 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13660 = mem[_13564]
                                require mem[_13564] <= 4294967296
                                require mem[_13564] + 32 <= return_data.size
                                require mem[mem[_13564] + _13564] <= 4294967296 and mem[_13564] + (32 * mem[mem[_13564] + _13564]) + 32 <= return_data.size
                                mem[_13564 + ceil32(return_data.size)] = mem[mem[_13564] + _13564]
                                _13954 = mem[_13660 + _13564]
                                idx = 0
                                while idx < 32 * _13954:
                                    mem[_13564 + ceil32(return_data.size) + idx + 32] = mem[_13660 + _13564 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _13954) + _13564 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13564 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13564 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13564 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13564 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13564 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[0])) / 100)
                                _13565 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13565 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13768 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13889 = mem[_13768]
                                require mem[_13768] <= 4294967296
                                require mem[_13768] + 32 <= return_data.size
                                require mem[mem[_13768] + _13768] <= 4294967296 and mem[_13768] + (32 * mem[mem[_13768] + _13768]) + 32 <= return_data.size
                                mem[_13768 + ceil32(return_data.size)] = mem[mem[_13768] + _13768]
                                _14136 = mem[_13889 + _13768]
                                idx = 0
                                while idx < 32 * _14136:
                                    mem[_13768 + ceil32(return_data.size) + idx + 32] = mem[_13889 + _13768 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14136) + _13768 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13768 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13768 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13768 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13768 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13768 + ceil32(return_data.size) + 64]
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[320]:
                                revert with 0, 'ds-math-mul-overflow'
                            require Mask(112, 0, ext_call.return_data[0])
                            if not -cd[132] + 100:
                                _13568 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13568 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13769 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13891 = mem[_13769]
                                require mem[_13769] <= 4294967296
                                require mem[_13769] + 32 <= return_data.size
                                require mem[mem[_13769] + _13769] <= 4294967296 and mem[_13769] + (32 * mem[mem[_13769] + _13769]) + 32 <= return_data.size
                                mem[_13769 + ceil32(return_data.size)] = mem[mem[_13769] + _13769]
                                _14137 = mem[_13891 + _13769]
                                idx = 0
                                while idx < 32 * _14137:
                                    mem[_13769 + ceil32(return_data.size) + idx + 32] = mem[_13891 + _13769 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14137) + _13769 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13769 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13769 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13769 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13769 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13769 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])) / 100)
                                _13770 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13770 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13955 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14040 = mem[_13955]
                                require mem[_13955] <= 4294967296
                                require mem[_13955] + 32 <= return_data.size
                                require mem[mem[_13955] + _13955] <= 4294967296 and mem[_13955] + (32 * mem[mem[_13955] + _13955]) + 32 <= return_data.size
                                mem[_13955 + ceil32(return_data.size)] = mem[mem[_13955] + _13955]
                                _14338 = mem[_14040 + _13955]
                                idx = 0
                                while idx < 32 * _14338:
                                    mem[_13955 + ceil32(return_data.size) + idx + 32] = mem[_14040 + _13955 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14338) + _13955 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13955 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13955 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13955 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13955 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13955 + ceil32(return_data.size) + 64]
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x4450616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[mem[64] + 106 len 26]
                        if not Mask(112, 0, ext_call.return_data[0]):
                            require Mask(112, 0, ext_call.return_data[32])
                            if not -cd[132] + 100:
                                _13375 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13375 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13571 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13663 = mem[_13571]
                                require mem[_13571] <= 4294967296
                                require mem[_13571] + 32 <= return_data.size
                                require mem[mem[_13571] + _13571] <= 4294967296 and mem[_13571] + (32 * mem[mem[_13571] + _13571]) + 32 <= return_data.size
                                mem[_13571 + ceil32(return_data.size)] = mem[mem[_13571] + _13571]
                                _13956 = mem[_13663 + _13571]
                                idx = 0
                                while idx < 32 * _13956:
                                    mem[_13571 + ceil32(return_data.size) + idx + 32] = mem[_13663 + _13571 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _13956) + _13571 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13571 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13571 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13571 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13571 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13571 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * 0 / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * 0 / Mask(112, 0, ext_call.return_data[32])) / 100)
                                _13572 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13572 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13773 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13894 = mem[_13773]
                                require mem[_13773] <= 4294967296
                                require mem[_13773] + 32 <= return_data.size
                                require mem[mem[_13773] + _13773] <= 4294967296 and mem[_13773] + (32 * mem[mem[_13773] + _13773]) + 32 <= return_data.size
                                mem[_13773 + ceil32(return_data.size)] = mem[mem[_13773] + _13773]
                                _14140 = mem[_13894 + _13773]
                                idx = 0
                                while idx < 32 * _14140:
                                    mem[_13773 + ceil32(return_data.size) + idx + 32] = mem[_13894 + _13773 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14140) + _13773 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13773 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13773 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13773 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13773 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13773 + ceil32(return_data.size) + 64]
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[320]:
                                revert with 0, 'ds-math-mul-overflow'
                            require Mask(112, 0, ext_call.return_data[32])
                            if not -cd[132] + 100:
                                _13575 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13575 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13774 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _13896 = mem[_13774]
                                require mem[_13774] <= 4294967296
                                require mem[_13774] + 32 <= return_data.size
                                require mem[mem[_13774] + _13774] <= 4294967296 and mem[_13774] + (32 * mem[mem[_13774] + _13774]) + 32 <= return_data.size
                                mem[_13774 + ceil32(return_data.size)] = mem[mem[_13774] + _13774]
                                _14141 = mem[_13896 + _13774]
                                idx = 0
                                while idx < 32 * _14141:
                                    mem[_13774 + ceil32(return_data.size) + idx + 32] = mem[_13896 + _13774 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14141) + _13774 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13774 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13774 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13774 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13774 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13774 + ceil32(return_data.size) + 64]
                            else:
                                require -cd[132] + 100
                                if (100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / -cd[132] + 100 != mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'ds-math-mul-overflow'
                                mem[352] = mem[352] + ((100 * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) - (cd[132] * mem[320] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])) / 100)
                                _13775 = mem[320]
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 68] = owner
                                mem[mem[64] + 100] = cd[260]
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = ('cd', 196).length
                                mem[mem[64] + 164 len 32 * ('cd', 196).length] = call.data[cd[196] + 36 len 32 * ('cd', 196).length]
                                mem[mem[64] + (32 * ('cd', 196).length) + 164] = 0
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value _13775 wei
                                     gas gas_remaining wei
                                    args 0, 128, owner, cd[260], ('cd', 196).length, call.data[cd[196] + 36 len floor32(('cd', 196).length)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _13957 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _14044 = mem[_13957]
                                require mem[_13957] <= 4294967296
                                require mem[_13957] + 32 <= return_data.size
                                require mem[mem[_13957] + _13957] <= 4294967296 and mem[_13957] + (32 * mem[mem[_13957] + _13957]) + 32 <= return_data.size
                                mem[_13957 + ceil32(return_data.size)] = mem[mem[_13957] + _13957]
                                _14345 = mem[_14044 + _13957]
                                idx = 0
                                while idx < 32 * _14345:
                                    mem[_13957 + ceil32(return_data.size) + idx + 32] = mem[_14044 + _13957 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[64] = (32 * _14345) + _13957 + ceil32(return_data.size) + 32
                                if not mem[s]:
                                    s = _13957 + ceil32(return_data.size)
                                    continue 
                                require 0 < mem[_13957 + ceil32(return_data.size)]
                                require 0 < mem[s]
                                mem[s + 32] = mem[s + 32] + mem[_13957 + ceil32(return_data.size) + 32]
                                require 1 < mem[_13957 + ceil32(return_data.size)]
                                require 1 < mem[s]
                                mem[s + 64] = mem[s + 64] + mem[_13957 + ceil32(return_data.size) + 64]
        s = s
        continue 
    if mem[352] <= 0:
        if not cd[164]:
            Mask(96, 0, stor0.field_160) = 1
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[s]
            _12058 = mem[s]
            mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
            return 32, mem[mem[64] + 32 len (32 * _12058) + 32]
        _11820 = mem[384]
        _11821 = mem[448]
        mem[mem[64] + 4] = owner
        require ext_code.size(address(_11821))
        staticcall address(_11821).0x70a08231 with:
                gas gas_remaining wei
               args owner
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - _11820 != ext_call.return_data[0] - _11820:
            revert with 0, 'ds-math-mul-overflow'
        _12630 = mem[448]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = ext_call.return_data[0] - _11820 / 100
        require ext_code.size(address(_12630))
        call address(_12630).0x23b872dd with:
             gas gas_remaining wei
            args owner, address(this.address), ext_call.return_data[0] - _11820 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _12725 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_12725 + 32 len 64] = call.data[calldata.size len 64]
        require 0 < mem[_12725]
        mem[_12725 + 32] = mem[460 len 20]
        require 1 < mem[_12725]
        mem[_12725 + 64] = mem[428 len 20]
        require ext_code.size(mem[460 len 20])
        staticcall mem[460 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < mem[_12725]
        require ext_code.size(mem[_12725 + 44 len 20])
        call mem[_12725 + 44 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[4]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_12725 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[_12725 + 100] = ext_call.return_data[0]
        mem[_12725 + 132] = 0
        mem[_12725 + 196] = owner
        mem[_12725 + 228] = block.timestamp
        mem[_12725 + 164] = 160
        mem[_12725 + 260] = mem[_12725]
        mem[_12725 + 292 len floor32(mem[_12725])] = mem[_12725 + 32 len floor32(mem[_12725])]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_12725 + 260 len (32 * mem[_12725]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        Mask(96, 0, stor0.field_160) = 1
        mem[_12725 + 96] = 32
        mem[_12725 + 128] = mem[s]
        _16154 = mem[s]
        mem[_12725 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
        return memory
          from mem[64]
           len (32 * _16154) + _12725 + -mem[64] + 160
    _11603 = mem[448]
    mem[mem[64] + 4] = owner
    require ext_code.size(address(_11603))
    staticcall address(_11603).0x70a08231 with:
            gas gas_remaining wei
           args owner
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - mem[384] < mem[352]:
        revert with 0, 'burn exceeds upper limit'
    if not cd[164]:
        Mask(96, 0, stor0.field_160) = 1
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[s]
        _12499 = mem[s]
        mem[mem[64] + 64 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
        return 32, mem[mem[64] + 32 len (32 * _12499) + 32]
    _12483 = mem[384]
    _12484 = mem[448]
    mem[mem[64] + 4] = owner
    require ext_code.size(address(_12484))
    staticcall address(_12484).0x70a08231 with:
            gas gas_remaining wei
           args owner
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] - _12483 != ext_call.return_data[0] - _12483:
        revert with 0, 'ds-math-mul-overflow'
    _12760 = mem[448]
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = ext_call.return_data[0] - _12483 / 100
    require ext_code.size(address(_12760))
    call address(_12760).0x23b872dd with:
         gas gas_remaining wei
        args owner, address(this.address), ext_call.return_data[0] - _12483 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12852 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    mem[_12852 + 32 len 64] = call.data[calldata.size len 64]
    require 0 < mem[_12852]
    mem[_12852 + 32] = mem[460 len 20]
    require 1 < mem[_12852]
    mem[_12852 + 64] = mem[428 len 20]
    require ext_code.size(mem[460 len 20])
    staticcall mem[460 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < mem[_12852]
    require ext_code.size(mem[_12852 + 44 len 20])
    call mem[_12852 + 44 len 20].approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_12852 + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[_12852 + 100] = ext_call.return_data[0]
    mem[_12852 + 132] = 0
    mem[_12852 + 196] = owner
    mem[_12852 + 228] = block.timestamp
    mem[_12852 + 164] = 160
    mem[_12852 + 260] = mem[_12852]
    mem[_12852 + 292 len floor32(mem[_12852])] = mem[_12852 + 32 len floor32(mem[_12852])]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, owner, block.timestamp, mem[_12852 + 260 len (32 * mem[_12852]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor0.field_160) = 1
    mem[_12852 + 96] = 32
    mem[_12852 + 128] = mem[s]
    _16157 = mem[s]
    mem[_12852 + 160 len floor32(mem[s])] = mem[s + 32 len floor32(mem[s])]
    return memory
      from mem[64]
       len (32 * _16157) + _12852 + -mem[64] + 160
}



}
