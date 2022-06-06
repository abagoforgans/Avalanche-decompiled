contract main {




// =====================  Runtime code  =====================


#
#  - impermaxBorrow(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - impermaxRedeem(address arg1, uint256 arg2, bytes arg3)
#  - sub_f74e2b3b(?)
#  - _fallback()
#
uint32 stor0;
address owner;
uint256 stor0;
array of struct stor1;
mapping of uint8 stor2;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;

function owner() {
    return address(owner)
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function skim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == arg1:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(owner) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
    else:
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    return ext_call.return_data[0]
}

function sub_3b8d55ad(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = address(arg1)
    mem[32] = 2
    if stor2[address(arg1)]:
        revert with 0, 'DUPE_DEX'
    if 3 > !stor1.length:
        revert with 'NH{q', 17
    if stor1.length + 3 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor1.length + 3
    if not stor1.length + 3:
        mem[(32 * stor1.length + 3) + 128] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88
        mem[(32 * stor1.length + 3) + 160] = 997
        if 0 >= stor1.length + 3:
            revert with 'NH{q', 50
        mem[128] = (32 * stor1.length + 3) + 128
        mem[(32 * stor1.length + 3) + 192] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
        mem[(32 * stor1.length + 3) + 224] = 997
        if 1 >= stor1.length + 3:
            revert with 'NH{q', 50
        mem[160] = (32 * stor1.length + 3) + 192
        mem[64] = (32 * stor1.length + 3) + 320
        mem[(32 * stor1.length + 3) + 256] = 0xa98ea6356a316b44bf710d5f9b6b4ea0081409ef
        mem[(32 * stor1.length + 3) + 288] = 999
        if 2 >= stor1.length + 3:
            revert with 'NH{q', 50
        mem[192] = (32 * stor1.length + 3) + 256
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            _60 = mem[64]
            mem[64] = mem[64] + 64
            mem[_60] = stor1[idx].field_0
            mem[_60 + 32] = stor1[idx].field_256
            if idx > -4:
                revert with 'NH{q', 17
            if idx + 3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx + 3) + 128] = _60
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 12 len 20] == address(arg1):
                revert with 0, 'DUPE_DEX'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairsLength() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _111 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_111] <= 0:
            revert with 0, 'EMPTY_DEX'
    else:
        mem[64] = (32 * stor1.length + 3) + 192
        mem[(32 * stor1.length + 3) + 128] = 0
        mem[(32 * stor1.length + 3) + 160] = 0
        s = 128
        idx = stor1.length + 3
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * stor1.length + 3) + 128] = 0
            mem[(32 * stor1.length + 3) + 160] = 0
            mem[s + 32] = (32 * stor1.length + 3) + 128
            s = s + 32
            idx = idx - 1
            continue 
        _62 = mem[64]
        mem[64] = mem[64] + 64
        mem[_62] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88
        mem[_62 + 32] = 997
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[128] = _62
        _67 = mem[64]
        mem[64] = mem[64] + 64
        mem[_67] = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
        mem[_67 + 32] = 997
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[160] = _67
        _72 = mem[64]
        mem[64] = mem[64] + 64
        mem[_72] = 0xa98ea6356a316b44bf710d5f9b6b4ea0081409ef
        mem[_72 + 32] = 999
        if 2 >= mem[96]:
            revert with 'NH{q', 50
        mem[192] = _72
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            _110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_110] = stor1[idx].field_0
            mem[_110 + 32] = stor1[idx].field_256
            if idx > -4:
                revert with 'NH{q', 17
            if idx + 3 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx + 3) + 128] = _110
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + 128] + 12 len 20] == address(arg1):
                revert with 0, 'DUPE_DEX'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairsLength() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_144] <= 0:
            revert with 0, 'EMPTY_DEX'
    stor2[address(arg1)] = 1
    stor1.length++
    stor1[stor1.length].field_0 = address(arg1)
    storB10E[stor1.length] = arg2
}



}
