contract main {




// =====================  Runtime code  =====================


#
#  - sub_1c9a0f4a(?)
#  - sub_d6595f3a(?)
#
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function recoverEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
}

function getReserve(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
}

function sub_9db007c1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xc35dadb65012ec5796536bd9864ed8773abc74c4)
    staticcall 0xc35dadb65012ec5796536bd9864ed8773abc74c4.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0x130966628846bfd36ff31a822705796e8cb8c18d, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xc35dadb65012ec5796536bd9864ed8773abc74c4)
    staticcall 0xc35dadb65012ec5796536bd9864ed8773abc74c4.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xda67235dd5787d67955420c84ca1cecd4e5bb3b, 0x130966628846bfd36ff31a822705796e8cb8c18d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.MEMOTowMEMO(uint256 arg1) with:
            gas gas_remaining wei
           args 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[18 len 14], 
           ext_call.return_data[32] << 144,
           ext_call.return_data[18 len 14],
           ext_call.return_data[32] << 144,
           ext_call.return_data[18 len 14],
           ext_call.return_data[32] << 144,
           ext_call.return_data[0]
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '!this'
    require arg4.length >= 192
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    mem[96] = cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    mem[128] = cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    mem[160] = cd[(arg4 + 100)]
    mem[192] = cd[(arg4 + 132)]
    mem[224] = cd[(arg4 + 164)]
    require cd[(arg4 + 196)] <= test266151307()
    require arg4 + cd[(arg4 + 196)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 196)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288 >= 256 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288 <= test266151307()
    mem[256] = cd[(arg4 + cd[(arg4 + 196)] + 36)]
    require cd[(arg4 + 196)] + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 68 <= arg4.length + 36
    mem[288 len cd[(arg4 + cd[(arg4 + 196)] + 36)]] = call.data[arg4 + cd[(arg4 + 196)] + 68 len cd[(arg4 + cd[(arg4 + 196)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 288] = 0
    if address(cd[(arg4 + 68)]) == 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 292] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 324] = this.address
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)], this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
        if not 0, ext_call.return_data[4 len 28]:
            revert with 0, '!TIME_STAKING'
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 292] = cd[(arg4 + 164)]
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = 3
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 452] = cd[(arg4 + 132)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 580] = 3
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], cd[(arg4 + 132)], Array(len=3, data=mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _202 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + return_data.size + 416
        _204 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 416] = _204
        require return_data.size >= _202 + (32 * _204) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 448 len 32 * _204] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + _202 + 448 len 32 * _204]
        require 2 < _204
        _359 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 512]
        mem[mem[64] + 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 512] - cd[(arg4 + 132)]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (_359 - cd[(arg4 + 132)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_367 + floor32(mem[_367]) + -(mem[_367] % 32) + 64 len mem[_367] % 32] = mem[_367 + -(mem[_367] % 32) + floor32(mem[_367]) + 64 len mem[_367] % 32]
        call owner.mem[_367 + 32 len 4] with:
           value _359 - cd[(arg4 + 132)] wei
             gas gas_remaining wei
            args mem[_367 + 36 len mem[_367] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_367 + 136 len 28]
            mem[_367 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_367 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_367 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_367 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_367 + ceil32(return_data.size) + 137 len 28]
            mem[_367 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_367 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_367 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_367 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_367 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_367 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        require cd[(arg4 + cd[(arg4 + 196)] + 36)] >= 32
        _9 = mem[288]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = 3
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        require 2 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 384] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 420] = (_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 452] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 580] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320
        while idx < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]) + -mem[64] + 608]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _201 = mem[_199]
        require mem[_199] <= test266151307()
        require _199 + mem[_199] + 31 < _199 + return_data.size
        _203 = mem[_199 + mem[_199]]
        require mem[_199 + mem[_199]] <= test266151307()
        require (32 * mem[_199 + mem[_199]]) + 32 >= 0 and _199 + ceil32(return_data.size) + (32 * mem[_199 + mem[_199]]) + 32 <= test266151307()
        mem[64] = _199 + ceil32(return_data.size) + (32 * mem[_199 + mem[_199]]) + 32
        mem[_199 + ceil32(return_data.size)] = _203
        require return_data.size >= _201 + (32 * _203) + 32
        mem[_199 + ceil32(return_data.size) + 32 len 32 * _203] = mem[_199 + _201 + 32 len 32 * _203]
        require 0 < _203
        _357 = mem[_199 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = (_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args ((_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _364 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = mem[_364]
        mem[mem[64] + 36] = 0
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = cd[(arg4 + 164)] - _357
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (cd[(arg4 + 164)] - _357)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_397 + floor32(mem[_397]) + -(mem[_397] % 32) + 64 len mem[_397] % 32] = mem[_397 + -(mem[_397] % 32) + floor32(mem[_397]) + 64 len mem[_397] % 32]
        call owner.mem[_397 + 32 len 4] with:
           value cd[(arg4 + 164)] - _357 wei
             gas gas_remaining wei
            args mem[_397 + 36 len mem[_397] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_397 + 136 len 28]
            mem[_397 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_397 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_397 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_397 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_397 + ceil32(return_data.size) + 137 len 28]
            mem[_397 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_397 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_397 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_397 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_397 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_397 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '!this'
    require arg4.length >= 192
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    mem[96] = cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    mem[128] = cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    mem[160] = cd[(arg4 + 100)]
    mem[192] = cd[(arg4 + 132)]
    mem[224] = cd[(arg4 + 164)]
    require cd[(arg4 + 196)] <= test266151307()
    require arg4 + cd[(arg4 + 196)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 196)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288 >= 256 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288 <= test266151307()
    mem[256] = cd[(arg4 + cd[(arg4 + 196)] + 36)]
    require cd[(arg4 + 196)] + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 68 <= arg4.length + 36
    mem[288 len cd[(arg4 + cd[(arg4 + 196)] + 36)]] = call.data[arg4 + cd[(arg4 + 196)] + 68 len cd[(arg4 + cd[(arg4 + 196)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 288] = 0
    if address(cd[(arg4 + 68)]) == 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 292] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 324] = this.address
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)], this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
        if not 0, ext_call.return_data[4 len 28]:
            revert with 0, '!TIME_STAKING'
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 292] = cd[(arg4 + 164)]
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = 3
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 452] = cd[(arg4 + 132)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 580] = 3
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], cd[(arg4 + 132)], Array(len=3, data=mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _202 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + return_data.size + 416
        _204 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 416] = _204
        require return_data.size >= _202 + (32 * _204) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 448 len 32 * _204] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + _202 + 448 len 32 * _204]
        require 2 < _204
        _359 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 512]
        mem[mem[64] + 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 512] - cd[(arg4 + 132)]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (_359 - cd[(arg4 + 132)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_367 + floor32(mem[_367]) + -(mem[_367] % 32) + 64 len mem[_367] % 32] = mem[_367 + -(mem[_367] % 32) + floor32(mem[_367]) + 64 len mem[_367] % 32]
        call owner.mem[_367 + 32 len 4] with:
           value _359 - cd[(arg4 + 132)] wei
             gas gas_remaining wei
            args mem[_367 + 36 len mem[_367] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_367 + 136 len 28]
            mem[_367 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_367 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_367 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_367 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_367 + ceil32(return_data.size) + 137 len 28]
            mem[_367 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_367 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_367 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_367 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_367 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_367 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        require cd[(arg4 + cd[(arg4 + 196)] + 36)] >= 32
        _9 = mem[288]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = 3
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        require 2 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 384] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 420] = (_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 452] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 580] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320
        while idx < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]) + -mem[64] + 608]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _201 = mem[_199]
        require mem[_199] <= test266151307()
        require _199 + mem[_199] + 31 < _199 + return_data.size
        _203 = mem[_199 + mem[_199]]
        require mem[_199 + mem[_199]] <= test266151307()
        require (32 * mem[_199 + mem[_199]]) + 32 >= 0 and _199 + ceil32(return_data.size) + (32 * mem[_199 + mem[_199]]) + 32 <= test266151307()
        mem[64] = _199 + ceil32(return_data.size) + (32 * mem[_199 + mem[_199]]) + 32
        mem[_199 + ceil32(return_data.size)] = _203
        require return_data.size >= _201 + (32 * _203) + 32
        mem[_199 + ceil32(return_data.size) + 32 len 32 * _203] = mem[_199 + _201 + 32 len 32 * _203]
        require 0 < _203
        _357 = mem[_199 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = (_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args ((_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _364 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = mem[_364]
        mem[mem[64] + 36] = 0
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = cd[(arg4 + 164)] - _357
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (cd[(arg4 + 164)] - _357)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_397 + floor32(mem[_397]) + -(mem[_397] % 32) + 64 len mem[_397] % 32] = mem[_397 + -(mem[_397] % 32) + floor32(mem[_397]) + 64 len mem[_397] % 32]
        call owner.mem[_397 + 32 len 4] with:
           value cd[(arg4 + 164)] - _357 wei
             gas gas_remaining wei
            args mem[_397 + 36 len mem[_397] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_397 + 136 len 28]
            mem[_397 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_397 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_397 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_397 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_397 + ceil32(return_data.size) + 137 len 28]
            mem[_397 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_397 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_397 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_397 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_397 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_397 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '!this'
    require arg4.length >= 192
    require arg4.length >= 160
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    mem[96] = cd[(arg4 + 36)]
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    mem[128] = cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    mem[160] = cd[(arg4 + 100)]
    mem[192] = cd[(arg4 + 132)]
    mem[224] = cd[(arg4 + 164)]
    require cd[(arg4 + 196)] <= test266151307()
    require arg4 + cd[(arg4 + 196)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 196)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288 >= 256 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288 <= test266151307()
    mem[256] = cd[(arg4 + cd[(arg4 + 196)] + 36)]
    require cd[(arg4 + 196)] + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 68 <= arg4.length + 36
    mem[288 len cd[(arg4 + cd[(arg4 + 196)] + 36)]] = call.data[arg4 + cd[(arg4 + 196)] + 68 len cd[(arg4 + cd[(arg4 + 196)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 288] = 0
    if address(cd[(arg4 + 68)]) == 0xb54f16fb19478766a268f172c9480f8da1a7c9c3:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 292] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 324] = this.address
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)], this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
        if not 0, ext_call.return_data[4 len 28]:
            revert with 0, '!TIME_STAKING'
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 292] = cd[(arg4 + 164)]
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = 3
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 452] = cd[(arg4 + 132)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 580] = 3
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], cd[(arg4 + 132)], Array(len=3, data=mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _202 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + return_data.size + 416
        _204 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 416] = _204
        require return_data.size >= _202 + (32 * _204) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 448 len 32 * _204] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + _202 + 448 len 32 * _204]
        require 2 < _204
        _359 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 512]
        mem[mem[64] + 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 512] - cd[(arg4 + 132)]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (_359 - cd[(arg4 + 132)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _367 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_367 + floor32(mem[_367]) + -(mem[_367] % 32) + 64 len mem[_367] % 32] = mem[_367 + -(mem[_367] % 32) + floor32(mem[_367]) + 64 len mem[_367] % 32]
        call owner.mem[_367 + 32 len 4] with:
           value _359 - cd[(arg4 + 132)] wei
             gas gas_remaining wei
            args mem[_367 + 36 len mem[_367] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_367 + 136 len 28]
            mem[_367 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_367 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_367 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_367 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_367 + ceil32(return_data.size) + 137 len 28]
            mem[_367 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_367 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_367 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_367 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_367 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_367 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        require cd[(arg4 + cd[(arg4 + 196)] + 36)] >= 32
        _9 = mem[288]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = 3
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        require 2 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 384] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 420] = (_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 452] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 580] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320
        while idx < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]) + -mem[64] + 608]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _201 = mem[_199]
        require mem[_199] <= test266151307()
        require _199 + mem[_199] + 31 < _199 + return_data.size
        _203 = mem[_199 + mem[_199]]
        require mem[_199 + mem[_199]] <= test266151307()
        require (32 * mem[_199 + mem[_199]]) + 32 >= 0 and _199 + ceil32(return_data.size) + (32 * mem[_199 + mem[_199]]) + 32 <= test266151307()
        mem[64] = _199 + ceil32(return_data.size) + (32 * mem[_199 + mem[_199]]) + 32
        mem[_199 + ceil32(return_data.size)] = _203
        require return_data.size >= _201 + (32 * _203) + 32
        mem[_199 + ceil32(return_data.size) + 32 len 32 * _203] = mem[_199 + _201 + 32 len 32 * _203]
        require 0 < _203
        _357 = mem[_199 + ceil32(return_data.size) + 32]
        mem[mem[64] + 4] = (_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args ((_9 + (cd[(arg4 + 132)] * _9) / 10^9) + 1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _364 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = mem[_364]
        mem[mem[64] + 36] = 0
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = cd[(arg4 + 164)] - _357
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args (cd[(arg4 + 164)] - _357)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _397 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_397 + floor32(mem[_397]) + -(mem[_397] % 32) + 64 len mem[_397] % 32] = mem[_397 + -(mem[_397] % 32) + floor32(mem[_397]) + 64 len mem[_397] % 32]
        call owner.mem[_397 + 32 len 4] with:
           value cd[(arg4 + 164)] - _357 wei
             gas gas_remaining wei
            args mem[_397 + 36 len mem[_397] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_397 + 136 len 28]
            mem[_397 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_397 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_397 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_397 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_397 + ceil32(return_data.size) + 137 len 28]
            mem[_397 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_397 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_397 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_397 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_397 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_397 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
