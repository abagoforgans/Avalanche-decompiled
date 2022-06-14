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

function getInformation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
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
    if 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 == address(cd[(arg4 + 68)]):
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
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 292] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 292] = this.address
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 288] = 3
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = cd[(arg4 + 132)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 580] = 3
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], cd[(arg4 + 132)], Array(len=3, data=mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _280 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + return_data.size + 416
        _282 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 416] = _282
        require return_data.size >= _280 + (32 * _282) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 448 len 32 * _282] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + _280 + 448 len 32 * _282]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _513 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _515 = mem[_513]
        mem[mem[64] + 4] = mem[_513] - cd[(arg4 + 132)]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args (_515 - cd[(arg4 + 132)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _522 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_522 + floor32(mem[_522]) + -(mem[_522] % 32) + 64 len mem[_522] % 32] = mem[_522 + -(mem[_522] % 32) + floor32(mem[_522]) + 64 len mem[_522] % 32]
        call owner.mem[_522 + 32 len 4] with:
           value _515 - cd[(arg4 + 132)] wei
             gas gas_remaining wei
            args mem[_522 + 36 len mem[_522] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_522 + 136 len 28]
            mem[_522 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_522 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_522 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_522 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_522 + ceil32(return_data.size) + 137 len 28]
            mem[_522 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_522 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_522 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_522 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_522 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_522 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = 3
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        require 2 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 384] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 420] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 452] = 1
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 580] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)], 1, Array(len=Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), data=mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])], mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _279 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + return_data.size + 416
        _281 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 416] = _281
        require return_data.size >= _279 + (32 * _281) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 448 len 32 * _281] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + _279 + 448 len 32 * _281]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _512 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args mem[_512]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _532 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _537 = mem[_532]
        mem[mem[64] + 36] = 0
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args _537, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _587 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _596 = mem[_587]
        _597 = mem[64]
        mem[mem[64] + 36] = owner
        mem[mem[64] + 68] = _596 - cd[(arg4 + 132)]
        _598 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_598 + 32 len 4] = unknown_0xa9059cbb(?????)
        _601 = mem[_598]
        mem[_597 + 100 len floor32(mem[_598])] = mem[_598 + 32 len floor32(mem[_598])]
        mem[_597 + floor32(mem[_598]) + -(mem[_598] % 32) + 132 len mem[_598] % 32] = mem[_598 + -(mem[_598] % 32) + floor32(mem[_598]) + 64 len mem[_598] % 32]
        call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.mem[_597 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_597 + 104 len _601 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if cd[(arg4 + 36)]:
                require cd[(arg4 + 36)] >= 32
                if not cd[(arg4 + 68)]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[_597 + 200 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_597 + 264 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_597 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_597 + 232]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[_597 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_597 + 132]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[_597 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_597 + ceil32(return_data.size) + 265 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_597 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_597 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_597 + ceil32(return_data.size) + 233]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_597 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
    if 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 == address(cd[(arg4 + 68)]):
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
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 292] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 292] = this.address
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 288] = 3
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = cd[(arg4 + 132)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 580] = 3
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], cd[(arg4 + 132)], Array(len=3, data=mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _280 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + return_data.size + 416
        _282 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 416] = _282
        require return_data.size >= _280 + (32 * _282) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 448 len 32 * _282] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + _280 + 448 len 32 * _282]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _513 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _515 = mem[_513]
        mem[mem[64] + 4] = mem[_513] - cd[(arg4 + 132)]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args (_515 - cd[(arg4 + 132)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _522 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_522 + floor32(mem[_522]) + -(mem[_522] % 32) + 64 len mem[_522] % 32] = mem[_522 + -(mem[_522] % 32) + floor32(mem[_522]) + 64 len mem[_522] % 32]
        call owner.mem[_522 + 32 len 4] with:
           value _515 - cd[(arg4 + 132)] wei
             gas gas_remaining wei
            args mem[_522 + 36 len mem[_522] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_522 + 136 len 28]
            mem[_522 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_522 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_522 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_522 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_522 + ceil32(return_data.size) + 137 len 28]
            mem[_522 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_522 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_522 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_522 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_522 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_522 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = 3
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        require 2 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 384] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 420] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 452] = 1
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 580] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)], 1, Array(len=Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), data=mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])], mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _279 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + return_data.size + 416
        _281 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 416] = _281
        require return_data.size >= _279 + (32 * _281) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 448 len 32 * _281] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + _279 + 448 len 32 * _281]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _512 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args mem[_512]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _532 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _537 = mem[_532]
        mem[mem[64] + 36] = 0
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args _537, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _587 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _596 = mem[_587]
        _597 = mem[64]
        mem[mem[64] + 36] = owner
        mem[mem[64] + 68] = _596 - cd[(arg4 + 132)]
        _598 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_598 + 32 len 4] = unknown_0xa9059cbb(?????)
        _601 = mem[_598]
        mem[_597 + 100 len floor32(mem[_598])] = mem[_598 + 32 len floor32(mem[_598])]
        mem[_597 + floor32(mem[_598]) + -(mem[_598] % 32) + 132 len mem[_598] % 32] = mem[_598 + -(mem[_598] % 32) + floor32(mem[_598]) + 64 len mem[_598] % 32]
        call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.mem[_597 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_597 + 104 len _601 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if cd[(arg4 + 36)]:
                require cd[(arg4 + 36)] >= 32
                if not cd[(arg4 + 68)]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[_597 + 200 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_597 + 264 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_597 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_597 + 232]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[_597 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_597 + 132]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[_597 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_597 + ceil32(return_data.size) + 265 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_597 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_597 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_597 + ceil32(return_data.size) + 233]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_597 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
    if 0xb54f16fb19478766a268f172c9480f8da1a7c9c3 == address(cd[(arg4 + 68)]):
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
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 292] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 292] = this.address
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 288] = 3
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = cd[(arg4 + 132)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 580] = 3
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], cd[(arg4 + 132)], Array(len=3, data=mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _280 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + return_data.size + 416
        _282 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 416] = _282
        require return_data.size >= _280 + (32 * _282) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (7 * ceil32(return_data.size)) + 448 len 32 * _282] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + (6 * ceil32(return_data.size)) + _280 + 448 len 32 * _282]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _513 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _515 = mem[_513]
        mem[mem[64] + 4] = mem[_513] - cd[(arg4 + 132)]
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
             gas gas_remaining wei
            args (_515 - cd[(arg4 + 132)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _522 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_522 + floor32(mem[_522]) + -(mem[_522] % 32) + 64 len mem[_522] % 32] = mem[_522 + -(mem[_522] % 32) + floor32(mem[_522]) + 64 len mem[_522] % 32]
        call owner.mem[_522 + 32 len 4] with:
           value _515 - cd[(arg4 + 132)] wei
             gas gas_remaining wei
            args mem[_522 + 36 len mem[_522] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 36, 0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45, mem[_522 + 136 len 28]
            mem[_522 + 132 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_522 + 196 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_522 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_522 + 164]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x595472616e7366657248656c7065723a20415641585f5452414e534645525f4641494c45,
                            mem[_522 + ceil32(return_data.size) + 137 len 28]
            mem[_522 + ceil32(return_data.size) + 133 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_522 + ceil32(return_data.size) + 197 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_522 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_522 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_522 + ceil32(return_data.size) + 165]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_522 + (2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 288] = 3
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 352] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        require 2 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 384] = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 420] = cd[(arg4 + 164)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 452] = 1
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 484] = 160
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 580] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])]
        idx = 0
        s = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612
        t = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 320
        while idx < 3:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 516] = this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 548] = block.timestamp
        require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
        call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 164)], 1, Array(len=Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 32, 0, 0), data=mem[cd[(arg4 + cd[(arg4 + 196)] + 36)] + 320 len -cd[(arg4 + cd[(arg4 + 196)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)])], mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 612 len 96]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _279 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 <= test266151307()
        require ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 447 < ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + return_data.size + 416
        _281 = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]
        require mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416] <= test266151307()
        require (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 32 >= 0 and ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 448 <= test266151307()
        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 416 len 4], Mask(224, 32, cd[(arg4 + 164)]) >> 32 + 416]) + 448
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 416] = _281
        require return_data.size >= _279 + (32 * _281) + 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + ceil32(return_data.size) + 448 len 32 * _281] = mem[ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + _279 + 448 len 32 * _281]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _512 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
        call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
             gas gas_remaining wei
            args mem[_512]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
        staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _532 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _537 = mem[_532]
        mem[mem[64] + 36] = 0
        require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
        call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args _537, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
        staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _587 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _596 = mem[_587]
        _597 = mem[64]
        mem[mem[64] + 36] = owner
        mem[mem[64] + 68] = _596 - cd[(arg4 + 132)]
        _598 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_598 + 32 len 4] = unknown_0xa9059cbb(?????)
        _601 = mem[_598]
        mem[_597 + 100 len floor32(mem[_598])] = mem[_598 + 32 len floor32(mem[_598])]
        mem[_597 + floor32(mem[_598]) + -(mem[_598] % 32) + 132 len mem[_598] % 32] = mem[_598 + -(mem[_598] % 32) + floor32(mem[_598]) + 64 len mem[_598] % 32]
        call 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.mem[_597 + 100 len 4] with:
             gas gas_remaining wei
            args mem[_597 + 104 len _601 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if cd[(arg4 + 36)]:
                require cd[(arg4 + 36)] >= 32
                if not cd[(arg4 + 68)]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[_597 + 200 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_597 + 264 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_597 + 232 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_597 + 232]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[_597 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[_597 + 132]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
            mem[_597 + ceil32(return_data.size) + 201 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, cd[(arg4 + 132)]) >> 32
            call address(cd[(arg4 + 100)]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, cd[(arg4 + 132)]) << 224, mem[_597 + ceil32(return_data.size) + 265 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if cd[(arg4 + 36)]:
                    require cd[(arg4 + 36)] >= 32
                    if not cd[(arg4 + 68)]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[_597 + ceil32(return_data.size) + 233 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'TransferHelper: TRANSFER_FAILED',
                                mem[_597 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_597 + ceil32(return_data.size) + 233]:
                        revert with 0, 
                                    'TransferHelper: TRANSFER_FAILED',
                                    mem[_597 + (2 * ceil32(return_data.size)) + 302 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function sub_74595a95(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 128
    require arg3 == bool(arg3)
    require arg5 == address(arg5)
    if arg4 <= arg1:
        return 0
    if not arg3:
        mem[736] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        mem[768] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[800] = 2
        mem[832 len 64] = call.data[calldata.size len 64]
        mem[832] = arg2
        idx = 0
        while idx < 1:
            require idx < 2
            _1175 = mem[(32 * idx) + 736]
            require idx + 1 < 2
            _1186 = mem[(32 * idx + 1) + 736]
            if mem[(32 * idx) + 748 len 20] == mem[(32 * idx + 1) + 748 len 20]:
                revert with 0, 32, 41, 0x48556e697377617056324c696b654c6962726172793a204944454e544943414c5f4144445245535345, mem[1005 len 23]
            if mem[(32 * idx) + 748 len 20] < mem[(32 * idx + 1) + 748 len 20]:
                if not mem[(32 * idx) + 748 len 20]:
                    revert with 0, 32, 34, 0x73556e697377617056324c696b654c6962726172793a205a45524f5f414444524553, mem[998 len 30]
                mem[900] = mem[(32 * idx) + 748 len 20]
                require ext_code.size(address(arg5))
                staticcall address(arg5).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[900], address(_1186)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[896 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < 2
                if mem[(32 * idx) + 832] <= 0:
                    revert with 0, 
                                32,
                                47,
                                0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[1011 len 17]
                if address(_1175) == address(_1175):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if not mem[(32 * idx) + 832]:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 832] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 997 * mem[(32 * idx) + 832] / mem[(32 * idx) + 832] != 997:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if not 997 * mem[(32 * idx) + 832]:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * mem[(32 * idx) + 832] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 832]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 0 / 997 * mem[(32 * idx) + 832]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                                if (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 0 / (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 832] / 997 * mem[(32 * idx) + 832] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * mem[(32 * idx) + 832] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 832]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 832] / 997 * mem[(32 * idx) + 832]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                                if (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 832] / (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if not mem[(32 * idx) + 832]:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 832] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        if 997 * mem[(32 * idx) + 832] / mem[(32 * idx) + 832] != 997:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if not 997 * mem[(32 * idx) + 832]:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 997 * mem[(32 * idx) + 832] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 832]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 0 / 997 * mem[(32 * idx) + 832]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                                if (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 0 / (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 832] / 997 * mem[(32 * idx) + 832] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 997 * mem[(32 * idx) + 832] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 832]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 832] / 997 * mem[(32 * idx) + 832]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                                if (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 832] / (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            else:
                if not mem[(32 * idx + 1) + 748 len 20]:
                    revert with 0, 32, 34, 0x73556e697377617056324c696b654c6962726172793a205a45524f5f414444524553, mem[998 len 30]
                mem[900] = mem[(32 * idx) + 748 len 20]
                require ext_code.size(address(arg5))
                staticcall address(arg5).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[900], address(_1186)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[896 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < 2
                if mem[(32 * idx) + 832] <= 0:
                    revert with 0, 
                                32,
                                47,
                                0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[1011 len 17]
                if address(_1186) == address(_1175):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if not mem[(32 * idx) + 832]:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[0])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 832] = 0 / 1000 * Mask(112, 0, ext_call.return_data[0])
                    else:
                        if 997 * mem[(32 * idx) + 832] / mem[(32 * idx) + 832] != 997:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if not 997 * mem[(32 * idx) + 832]:
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * mem[(32 * idx) + 832] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 832]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 0 / 997 * mem[(32 * idx) + 832]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                                if (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 0 / (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                        else:
                            if 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 832] / 997 * mem[(32 * idx) + 832] != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            if not Mask(112, 0, ext_call.return_data[0]):
                                if 997 * mem[(32 * idx) + 832] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 832]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 832] / 997 * mem[(32 * idx) + 832]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                                if (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 997 * Mask(112, 0, ext_call.return_data[32]) * mem[(32 * idx) + 832] / (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[0]))
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if not mem[(32 * idx) + 832]:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * Mask(112, 0, ext_call.return_data[32])
                        require idx + 1 < 2
                        mem[(32 * idx + 1) + 832] = 0 / 1000 * Mask(112, 0, ext_call.return_data[32])
                    else:
                        if 997 * mem[(32 * idx) + 832] / mem[(32 * idx) + 832] != 997:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if not 997 * mem[(32 * idx) + 832]:
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 997 * mem[(32 * idx) + 832] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 832]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 0 / 997 * mem[(32 * idx) + 832]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                                if (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 0 / (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                        else:
                            if 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 832] / 997 * mem[(32 * idx) + 832] != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            if not Mask(112, 0, ext_call.return_data[32]):
                                if 997 * mem[(32 * idx) + 832] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * mem[(32 * idx) + 832]
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 832] / 997 * mem[(32 * idx) + 832]
                            else:
                                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                                    revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                                if (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
                                require idx + 1 < 2
                                mem[(32 * idx + 1) + 832] = 997 * Mask(112, 0, ext_call.return_data[0]) * mem[(32 * idx) + 832] / (997 * mem[(32 * idx) + 832]) + (1000 * Mask(112, 0, ext_call.return_data[32]))
            idx = idx + 1
            continue 
        require ext_code.size(uint64(arg5) << 96)
        staticcall uint64(arg5) << 96.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[864], 0, address(this.address), 128, 224, arg5 << 192, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, arg2, mem[864], 192, 0
    else:
        mem[736] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[768] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
        mem[800] = 2
        mem[832 len 64] = call.data[calldata.size len 64]
        mem[864] = arg2
        idx = 1
        while idx:
            require idx - 1 < 2
            require idx < 2
            _1190 = mem[(32 * idx) + 736]
            if mem[(32 * idx - 1) + 748 len 20] == mem[(32 * idx) + 748 len 20]:
                revert with 0, 32, 41, 0x48556e697377617056324c696b654c6962726172793a204944454e544943414c5f4144445245535345, mem[1005 len 23]
            if mem[(32 * idx - 1) + 748 len 20] < mem[(32 * idx) + 748 len 20]:
                if not mem[(32 * idx - 1) + 748 len 20]:
                    revert with 0, 32, 34, 0x73556e697377617056324c696b654c6962726172793a205a45524f5f414444524553, mem[998 len 30]
                require ext_code.size(address(arg5))
                staticcall address(arg5).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * idx - 1) + 748 len 20], address(mem[(32 * idx) + 736])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[896 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[800]
                if mem[(32 * idx) + 832] <= 0:
                    revert with 0, 
                                32,
                                48,
                                0x54556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[1012 len 16]
                if mem[(32 * idx - 1) + 748 len 20] == mem[(32 * idx - 1) + 748 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832]
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832] != 997:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[800]
                        mem[(32 * idx - 1) + 832] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1
                    else:
                        if mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + 832]:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if not mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]):
                            if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832]
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832] != 997:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[800]
                            mem[(32 * idx - 1) + 832] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832]
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832] != 997:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])
                            if (1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1 < 1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[800]
                            mem[(32 * idx - 1) + 832] = (1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832]
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832] != 997:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[800]
                        mem[(32 * idx - 1) + 832] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1
                    else:
                        if mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + 832]:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if not mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]):
                            if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832]
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832] != 997:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[800]
                            mem[(32 * idx - 1) + 832] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832]
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832] != 997:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])
                            if (1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1 < 1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[800]
                            mem[(32 * idx - 1) + 832] = (1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1
            else:
                if not mem[(32 * idx) + 748 len 20]:
                    revert with 0, 32, 34, 0x73556e697377617056324c696b654c6962726172793a205a45524f5f414444524553, mem[998 len 30]
                require ext_code.size(address(arg5))
                staticcall address(arg5).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * idx - 1) + 748 len 20], address(mem[(32 * idx) + 736])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[896 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[800]
                if mem[(32 * idx) + 832] <= 0:
                    revert with 0, 
                                32,
                                48,
                                0x54556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                                mem[1012 len 16]
                if address(_1190) == mem[(32 * idx - 1) + 748 len 20]:
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832]
                        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832] != 997:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[800]
                        mem[(32 * idx - 1) + 832] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1
                    else:
                        if mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != mem[(32 * idx) + 832]:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if not mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]):
                            if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832]
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832] != 997:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[800]
                            mem[(32 * idx - 1) + 832] = (0 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) != 1000:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832]
                            if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[32]) - mem[(32 * idx) + 832] != 997:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])
                            if (1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1 < 1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[800]
                            mem[(32 * idx - 1) + 832] = (1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[0]) / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * mem[(32 * idx) + 832])) + 1
                else:
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 32, 44, 0x53556e697377617056324c696b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[1008 len 20]
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: subtraction overflow'
                        require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832]
                        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832] != 997:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])
                        if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]):
                            revert with 0, 'SafeMath: addition overflow'
                        require idx - 1 < mem[800]
                        mem[(32 * idx - 1) + 832] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1
                    else:
                        if mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != mem[(32 * idx) + 832]:
                            revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                        if not mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]):
                            if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832]
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832] != 997:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])
                            if (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1 < 0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[800]
                            mem[(32 * idx - 1) + 832] = (0 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1
                        else:
                            if 1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) != 1000:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            if mem[(32 * idx) + 832] > Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: subtraction overflow'
                            require Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832]
                            if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]) / Mask(112, 0, ext_call.return_data[0]) - mem[(32 * idx) + 832] != 997:
                                revert with 0, 32, 33, 0x44536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[997 len 31]
                            require (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])
                            if (1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1 < 1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832]):
                                revert with 0, 'SafeMath: addition overflow'
                            require idx - 1 < mem[800]
                            mem[(32 * idx - 1) + 832] = (1000 * mem[(32 * idx) + 832] * Mask(112, 0, ext_call.return_data[32]) / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * mem[(32 * idx) + 832])) + 1
            idx = idx - 1
            continue 
        require 0 < mem[800]
        require ext_code.size(uint64(arg5) << 96)
        staticcall uint64(arg5) << 96.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg2, address(this.address), 128, 224, arg5 << 192, 0xb54f16fb19478766a268f172c9480f8da1a7c9c3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, mem[832], arg2, 192, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
