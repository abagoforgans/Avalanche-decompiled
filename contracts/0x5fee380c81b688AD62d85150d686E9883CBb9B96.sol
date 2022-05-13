contract main {




// =====================  Runtime code  =====================


#
#  - sub_eec9149c(?)
#
const getBalance = eth.balance(this.address)


address owner;
mapping of uint8 stor1;
uint256 stor2;

function owner() {
    return owner
}

function deposit() payable {
  stop
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

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if arg2 >= 20 * 10^18:
            revert with 0, 'Exceed max withdraw amount'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
}

function sub_00663bf3(?) {
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
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[address(msg.sender)]:
        revert with 0, 'Caller not Admin Role'
    idx = 0
    while idx < arg1.length:
        _66 = mem[(32 * arg1.length) + 128]
        s = 0
        while s < _66:
            require idx < mem[96]
            _68 = mem[(32 * idx) + 128]
            require s < mem[(32 * arg1.length) + 128]
            _71 = mem[64]
            mem[mem[64] + 36] = mem[(32 * s) + (32 * arg1.length) + 172 len 20]
            mem[mem[64] + 68] = stor2
            _72 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_72 + 32] = mem[_72 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            _75 = mem[_72]
            t = _72 + 32
            u = _71 + 100
            idx = mem[_72]
            while idx >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                idx = idx - 32
                continue 
            mem[_71 + floor32(mem[_72]) + 100] = mem[_72 + -(mem[_72] % 32) + floor32(mem[_72]) + 64 len mem[_72] % 32] or Mask(8 * -(mem[_72] % 32) + 32, -(8 * -(mem[_72] % 32) + 32) + 256, mem[_71 + floor32(mem[_72]) + 100])
            call address(_68).mem[_71 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_71 + 104 len _75 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
            else:
                mem[64] = _71 + ceil32(return_data.size) + 101
                mem[_71 + 100] = return_data.size
                mem[_71 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: APPROVE_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_71 + 132]:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}



}
