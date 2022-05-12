contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_1ae0d31c(?)
#  - hswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
address sub_c70968e7Address;
uint256 sub_296f9ca4;
address beneficiaryAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address wEthAddress;
uint256 limit;

function sub_296f9ca4(?) {
    return sub_296f9ca4
}

function sub_371f274d(?) {
    return bool(uint8(stor4.field_160))
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function limit() {
    return limit
}

function sub_c70968e7(?) {
    return sub_c70968e7Address
}

function wEth() {
    return wEthAddress
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_a2899a25(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    wEthAddress = arg1
}

function sub_f602f731(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_296f9ca4 = arg1
}

function updateOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function updateLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    limit = arg1
}

function updateBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function sub_e4fdd485(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function collectEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e35a25b2(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    call arg1 with:
       value arg3 wei
         gas gas_remaining wei
        args arg2[all]
}

function sub_027d6f56(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = owner
        mem[132] = ext_call.return_data[0]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_627d51a2(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128 len 64] = code.data[12956 len 64]
    require 0 < arg3.length
    _4 = mem[128]
    require 1 < arg3.length
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + 196] = mem[172 len 20]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[172 len 20]
    mem[(32 * arg3.length) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        return code.data[12956 len 64]
    require (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)
    mem[(32 * arg3.length) + 128] = (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1
    if arg3.length != 4:
        return (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1, 
               code.data[12988 len 32]
    require 2 < arg3.length
    require 3 < arg3.length
    require ext_code.size(address(_4))
    staticcall address(_4).0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[204 len 20])
    staticcall mem[204 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1:
        return 0, code.data[12988 len 32]
    require (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * sub_296f9ca4)
    return (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4)) + 1, 
           ((1000 * ext_call.return_data[0]) + (1000 * 1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * ext_call.return_data[0]) / (ext_call.return_data[0] * sub_296f9ca4) - sub_296f9ca4 - (1000 * ext_call.return_data[0] * arg2 / (ext_call.return_data[0] * sub_296f9ca4) - (arg2 * sub_296f9ca4) * sub_296f9ca4)) + 1
}

function sub_aa330671(?) {
    require calldata.size - 4 >= 256
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require ext_code.size(address(call.data[100]))
    staticcall address(call.data[100]).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        emit 0xca594936: arg1, ext_call.return_data[0]
    else:
        if arg1:
            if not arg6 * arg1 / 100:
                revert with 0, 'borrow amount is 0'
            emit Step(0, arg6 * arg1 / 100);
            require sub_296f9ca4
            mem[(32 * arg4.length) + 192 len 64] = code.data[12956 len 64]
            mem[(32 * arg4.length) + 192] = (1000 * arg6 * arg1 / 100 / sub_296f9ca4) + 1
            mem[(32 * arg4.length) + 288] = arg2
            mem[(32 * arg4.length) + 320 len 64] = call.data[68 len 64]
            mem[(32 * arg4.length) + 384] = arg6 * arg1 / 100
            mem[(32 * arg4.length) + 448] = address(call.data[100])
            mem[(32 * arg4.length) + 480] = address(call.data[68])
            mem[(32 * arg4.length) + 512 len 64] = (1000 * arg6 * arg1 / 100 / sub_296f9ca4) + 1, code.data[12988 len 32]
            mem[(32 * arg4.length) + 416] = 288
            mem[(32 * arg4.length) + 576] = arg4.length
            mem[(32 * arg4.length) + 608 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            require 1 < arg4.length
            sub_c70968e7Address = mem[236 len 20]
            emit Step(uint256 arg1, uint256 arg2)
            emit 0x1 
            emit 0x0 
            require 1 < arg4.length
            mem[(64 * arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if call.data[80 len 20] > arg3:
                mem[(64 * arg4.length) + 612] = 0
                mem[(64 * arg4.length) + 644] = arg6 * arg1 / 100
                mem[(64 * arg4.length) + 676] = this.address
                mem[(64 * arg4.length) + 708] = 128
                mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
                mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
                if not (96 * arg4.length) + 320 % 32:
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg6 * arg1 / 100, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
                else:
                    mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg6 * arg1 / 100, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
            else:
                mem[(64 * arg4.length) + 612] = arg6 * arg1 / 100
                mem[(64 * arg4.length) + 644] = 0
                mem[(64 * arg4.length) + 676] = this.address
                mem[(64 * arg4.length) + 708] = 128
                mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
                mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
                if not (96 * arg4.length) + 320 % 32:
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6 * arg1 / 100, 0, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
                else:
                    mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6 * arg1 / 100, 0, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(stor4.field_160):
                if wEthAddress != call.data[80 len 20]:
                    if arg5:
                        if arg5:
                            require ext_code.size(wEthAddress)
                            staticcall wEthAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(call.data[68]))
                            staticcall address(call.data[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(call.data[68]))
                            staticcall address(call.data[68]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(address(call.data[68])):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                            mem[(64 * arg4.length) + 800 len 4] = ext_call.return_data[20 len 4]
                            call address(call.data[68]) with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                            if not return_data.size:
                                if not ext_call.success:
                                    mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg4.length) + 712] = 32
                                    mem[(64 * arg4.length) + 744] = 32
                                    mem[(64 * arg4.length) + 776] = 'SafeERC20: low-level call failed'
                                    revert with memory
                                      from (64 * arg4.length) + 708
                                       len (127 * arg4.length) + 100
                                if call.data[68]:
                                    require call.data[68] >= 32
                                    if not call.data[100]:
                                        mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + 712] = 32
                                        mem[(64 * arg4.length) + 744] = 51
                                        mem[(64 * arg4.length) + 776 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                        revert with memory
                                          from (64 * arg4.length) + 708
                                           len (127 * arg4.length) + 132
                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                if address(call.data[68]) >= wEthAddress:
                                    mem[(64 * arg4.length) + 744] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + 776] = 0
                                else:
                                    mem[(64 * arg4.length) + 744] = 0
                                    mem[(64 * arg4.length) + 776] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                mem[(64 * arg4.length) + 808] = this.address
                                mem[(64 * arg4.length) + 840] = 128
                                mem[(64 * arg4.length) + 872] = 0
                                mem[(64 * arg4.length) + 904 len 0] = None
                                require ext_code.size(arg5)
                                call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[(64 * arg4.length) + 744 len (127 * arg4.length) + 160]
                            else:
                                mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 32
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                    revert with memory
                                      from (64 * arg4.length) + ceil32(return_data.size) + 709
                                       len (127 * arg4.length) + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(64 * arg4.length) + 740]:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 51
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                        revert with memory
                                          from (64 * arg4.length) + ceil32(return_data.size) + 709
                                           len (127 * arg4.length) + 132
                                require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                if address(call.data[68]) >= wEthAddress:
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 0
                                else:
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 0
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                mem[(64 * arg4.length) + ceil32(return_data.size) + 809] = this.address
                                mem[(64 * arg4.length) + ceil32(return_data.size) + 841] = 128
                                mem[(64 * arg4.length) + ceil32(return_data.size) + 873] = 0
                                mem[(64 * arg4.length) + ceil32(return_data.size) + 905 len 0] = None
                                require ext_code.size(arg5)
                                call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args mem[(64 * arg4.length) + ceil32(return_data.size) + 745 len (127 * arg4.length) + 160]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(call.data[100]))
            call address(call.data[100]).borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg6 * ext_call.return_data[0] / 100:
                revert with 0, 'borrow amount is 0'
            emit Step(0, arg6 * ext_call.return_data[0] / 100);
            require sub_296f9ca4
            mem[(32 * arg4.length) + 192 len 64] = code.data[12956 len 64]
            mem[(32 * arg4.length) + 192] = (1000 * arg6 * ext_call.return_data[0] / 100 / sub_296f9ca4) + 1
            mem[(32 * arg4.length) + 288] = arg2
            mem[(32 * arg4.length) + 320 len 64] = call.data[68 len 64]
            mem[(32 * arg4.length) + 384] = arg6 * ext_call.return_data[0] / 100
            mem[(32 * arg4.length) + 448] = address(call.data[100])
            mem[(32 * arg4.length) + 480] = address(call.data[68])
            mem[(32 * arg4.length) + 512 len 64] = (1000 * arg6 * ext_call.return_data[0] / 100 / sub_296f9ca4) + 1, code.data[12988 len 32]
            mem[(32 * arg4.length) + 416] = 288
            mem[(32 * arg4.length) + 576] = arg4.length
            mem[(32 * arg4.length) + 608 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            require 1 < arg4.length
            sub_c70968e7Address = mem[236 len 20]
            emit Step(uint256 arg1, uint256 arg2)
            emit 0x1 
            emit 0x0 
            require 1 < arg4.length
            mem[(64 * arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            if call.data[80 len 20] <= arg3:
                mem[(64 * arg4.length) + 612] = arg6 * ext_call.return_data[0] / 100
                mem[(64 * arg4.length) + 644] = 0
                mem[(64 * arg4.length) + 676] = this.address
                mem[(64 * arg4.length) + 708] = 128
                mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
                mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
                if (96 * arg4.length) + 320 % 32:
                    mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6 * ext_call.return_data[0] / 100, 0, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(stor4.field_160):
                        if wEthAddress != call.data[80 len 20]:
                            if arg5:
                                if arg5:
                                    require ext_code.size(wEthAddress)
                                    staticcall wEthAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(call.data[68]))
                                    staticcall address(call.data[68]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(call.data[68]))
                                    staticcall address(call.data[68]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(address(call.data[68])):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                    call address(call.data[68]) with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if call.data[68]:
                                            require call.data[68] >= 32
                                            if not call.data[100]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(64 * arg4.length) + 827 len 13]
                                    else:
                                        mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(64 * arg4.length) + 740]:
                                                revert with 0, 
                                                            32,
                                                            51,
                                                            0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 828 len 13]
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    require ext_code.size(arg5)
                                    if address(call.data[68]) >= wEthAddress:
                                        call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), 0, address(this.address), 128, 0
                                    else:
                                        call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0]), address(this.address), 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args arg6 * ext_call.return_data[0] / 100, 0, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if uint8(stor4.field_160):
                        if wEthAddress != call.data[80 len 20]:
                            if arg5:
                                if arg5:
                                    require ext_code.size(wEthAddress)
                                    staticcall wEthAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(call.data[68]))
                                    staticcall address(call.data[68]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg5
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(call.data[68]))
                                    staticcall address(call.data[68]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(address(call.data[68])):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                    mem[(64 * arg4.length) + 800 len 4] = ext_call.return_data[20 len 4]
                                    call address(call.data[68]) with:
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + 712] = 32
                                            mem[(64 * arg4.length) + 744] = 32
                                            mem[(64 * arg4.length) + 776] = 'SafeERC20: low-level call failed'
                                            revert with memory
                                              from (64 * arg4.length) + 708
                                               len (127 * arg4.length) + 100
                                        if call.data[68]:
                                            require call.data[68] >= 32
                                            if not call.data[100]:
                                                mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(64 * arg4.length) + 712] = 32
                                                mem[(64 * arg4.length) + 744] = 51
                                                mem[(64 * arg4.length) + 776 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                revert with memory
                                                  from (64 * arg4.length) + 708
                                                   len (127 * arg4.length) + 132
                                        require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        if address(call.data[68]) >= wEthAddress:
                                            mem[(64 * arg4.length) + 744] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            mem[(64 * arg4.length) + 776] = 0
                                        else:
                                            mem[(64 * arg4.length) + 744] = 0
                                            mem[(64 * arg4.length) + 776] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + 808] = this.address
                                        mem[(64 * arg4.length) + 840] = 128
                                        mem[(64 * arg4.length) + 872] = 0
                                        mem[(64 * arg4.length) + 904 len 0] = None
                                        require ext_code.size(arg5)
                                        call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[(64 * arg4.length) + 744 len (127 * arg4.length) + 160]
                                    else:
                                        mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 32
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                            revert with memory
                                              from (64 * arg4.length) + ceil32(return_data.size) + 709
                                               len (127 * arg4.length) + 100
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[(64 * arg4.length) + 740]:
                                                mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                                mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 51
                                                mem[(64 * arg4.length) + ceil32(return_data.size) + 777 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                                revert with memory
                                                  from (64 * arg4.length) + ceil32(return_data.size) + 709
                                                   len (127 * arg4.length) + 132
                                        require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        if address(call.data[68]) >= wEthAddress:
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 0
                                        else:
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 0
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 809] = this.address
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 841] = 128
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 873] = 0
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 905 len 0] = None
                                        require ext_code.size(arg5)
                                        call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args mem[(64 * arg4.length) + ceil32(return_data.size) + 745 len (127 * arg4.length) + 160]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[(64 * arg4.length) + 612] = 0
                mem[(64 * arg4.length) + 644] = arg6 * ext_call.return_data[0] / 100
                mem[(64 * arg4.length) + 676] = this.address
                mem[(64 * arg4.length) + 708] = 128
                mem[(64 * arg4.length) + 740] = (96 * arg4.length) + 320
                mem[(64 * arg4.length) + 772 len ceil32(96 * arg4.length) + 10] = mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10]
                if not (96 * arg4.length) + 320 % 32:
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg6 * ext_call.return_data[0] / 100, address(this.address), 128, mem[(64 * arg4.length) + 740 len (96 * arg4.length) + 352]
                else:
                    mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + 772] = mem[floor32((96 * arg4.length) + 320) + (64 * arg4.length) + -((96 * arg4.length) + 320 % 32) + 804 len (96 * arg4.length) + 320 % 32]
                    require ext_code.size(mem[236 len 20])
                    call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, arg6 * ext_call.return_data[0] / 100, address(this.address), 128, (96 * arg4.length) + 320, mem[(32 * arg4.length) + 288 len ceil32(96 * arg4.length) + 10], mem[(64 * arg4.length) + ceil32(96 * arg4.length) + 782 len floor32((96 * arg4.length) + 320) + -ceil32(96 * arg4.length) + 22]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if uint8(stor4.field_160):
                    if wEthAddress != call.data[80 len 20]:
                        if arg5:
                            if arg5:
                                require ext_code.size(wEthAddress)
                                staticcall wEthAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg5
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(call.data[68]))
                                staticcall address(call.data[68]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(address(call.data[68])):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[(64 * arg4.length) + 708 len 64] = unknown_0xa9059cbb(?????), address(arg5) << 64, 0, ext_call.return_data[0 len 28]
                                mem[(64 * arg4.length) + 800 len 4] = ext_call.return_data[20 len 4]
                                call address(call.data[68]) with:
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, uint32(arg2)
                                if not return_data.size:
                                    if not ext_call.success:
                                        mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + 712] = 32
                                        mem[(64 * arg4.length) + 744] = 32
                                        mem[(64 * arg4.length) + 776] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg4.length) + 708
                                           len (127 * arg4.length) + 100
                                    if call.data[68]:
                                        require call.data[68] >= 32
                                        if not call.data[100]:
                                            mem[(64 * arg4.length) + 708] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + 712] = 32
                                            mem[(64 * arg4.length) + 744] = 51
                                            mem[(64 * arg4.length) + 776 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg4.length) + 708
                                               len (127 * arg4.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if address(call.data[68]) >= wEthAddress:
                                        mem[(64 * arg4.length) + 744] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + 776] = 0
                                    else:
                                        mem[(64 * arg4.length) + 744] = 0
                                        mem[(64 * arg4.length) + 776] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + 808] = this.address
                                    mem[(64 * arg4.length) + 840] = 128
                                    mem[(64 * arg4.length) + 872] = 0
                                    mem[(64 * arg4.length) + 904 len 0] = None
                                    require ext_code.size(arg5)
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg4.length) + 744 len (127 * arg4.length) + 160]
                                else:
                                    mem[(64 * arg4.length) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 32
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 'SafeERC20: low-level call failed'
                                        revert with memory
                                          from (64 * arg4.length) + ceil32(return_data.size) + 709
                                           len (127 * arg4.length) + 100
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[(64 * arg4.length) + 740]:
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 709] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 713] = 32
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 51
                                            mem[(64 * arg4.length) + ceil32(return_data.size) + 777 len 51] = 0x64536166654552433230207472616e736665723a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                                            revert with memory
                                              from (64 * arg4.length) + ceil32(return_data.size) + 709
                                               len (127 * arg4.length) + 132
                                    require (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    if address(call.data[68]) >= wEthAddress:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = 0
                                    else:
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 745] = 0
                                        mem[(64 * arg4.length) + ceil32(return_data.size) + 777] = ext_call.return_data[0] * sub_296f9ca4 * ext_call.return_data[0] / (ext_call.return_data[0] * sub_296f9ca4) + (1000 * ext_call.return_data[0])
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 809] = this.address
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 841] = 128
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 873] = 0
                                    mem[(64 * arg4.length) + ceil32(return_data.size) + 905 len 0] = None
                                    require ext_code.size(arg5)
                                    call arg5.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args mem[(64 * arg4.length) + ceil32(return_data.size) + 745 len (127 * arg4.length) + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
