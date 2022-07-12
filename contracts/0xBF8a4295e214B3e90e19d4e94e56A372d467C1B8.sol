contract main {




// =====================  Runtime code  =====================


#
#  - withdrawAnyToken(address arg1, uint256 arg2)
#
address owner;
uint256 stor1;
mapping of uint256 sub_5ab7e6c7;
address tokenAddress;

function sub_5ab7e6c7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5ab7e6c7[arg1]
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawFundedBNB() {
    if owner != msg.sender:
        revert with 0, 'Not owner or operator'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'BNB withdraw failed'
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid Token Address'
    tokenAddress = arg1
    emit 0x4bffa883: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setWhitelist(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Not owner or operator'
    if arg2.length != arg1.length:
        revert with 0, 'Invalid params'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        sub_5ab7e6c7[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdrawFundedToken() {
    if owner != msg.sender:
        revert with 0, 'Not owner or operator'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function claim() {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if tx.origin != msg.sender:
        revert with 0, 'should be EOA'
    if not sub_5ab7e6c7[msg.sender]:
        revert with 0, 'You dont have claimable amount!'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_5ab7e6c7[msg.sender]:
        revert with 0, 'Claim does not start!'
    sub_5ab7e6c7[msg.sender] = 0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = sub_5ab7e6c7[msg.sender]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_5ab7e6c7[msg.sender], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_5ab7e6c7[msg.sender], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_5ab7e6c7[msg.sender], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor1 = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        revert with 0, 'Something went wrong!'
    if unknown_0x87a35382(?????) <= uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0x87a35382(?????):
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0xf013e0e1(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf3278a37(?????):
                        require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return tokenAddress
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Not owner or operator'
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'BNB withdraw failed'
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                require ('cd', 4).length <= test266151307()
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                if owner != msg.sender:
                    revert with 0, 'Not owner or operator'
                if ('cd', 36).length != ('cd', 4).length:
                    revert with 0, 'Invalid params'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    sub_5ab7e6c7[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Not owner or operator'
            mem[164] = msg.sender
            mem[196] = cd[36]
            mem[128] = 68
            mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[160 len 4] = unknown_0xa9059cbb(?????)
            mem[228] = 32
            mem[260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[4])):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0xa9059cbb(?????), msg.sender, cd[36], 0
            mem[360] = 0
            call address(cd[4]) with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, cd[36], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, cd[36], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                require not mem[96]
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[324] == bool(mem[324])
                if not mem[324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if unknown_0x144fa6d7(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(cd[4]):
                revert with 0, 'Invalid Token Address'
            tokenAddress = address(cd[4])
            emit 0x4bffa883: address(cd[4])
        else:
            if unknown_0x288575db(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Not owner or operator'
                mem[132] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 164] = msg.sender
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 128] = 68
                mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 360] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x4e71d92d(?????):
                    if unknown_0x5ab7e6c7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return sub_5ab7e6c7[cd[4]]
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require not msg.value
                    if stor1 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1 = 2
                    if tx.origin != msg.sender:
                        revert with 0, 'should be EOA'
                    if not sub_5ab7e6c7[msg.sender]:
                        revert with 0, 'You dont have claimable amount!'
                    mem[132] = this.address
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < sub_5ab7e6c7[msg.sender]:
                        revert with 0, 'Claim does not start!'
                    sub_5ab7e6c7[msg.sender] = 0
                    mem[ceil32(return_data.size) + 164] = msg.sender
                    mem[ceil32(return_data.size) + 196] = sub_5ab7e6c7[msg.sender]
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(tokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_5ab7e6c7[msg.sender], 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call tokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_5ab7e6c7[msg.sender], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_5ab7e6c7[msg.sender], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    stor1 = 1
}



}
