contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of struct sub_bb2238ec;
mapping of struct sub_cfcb1cd2;
mapping of uint256 sub_f5bddf13;
mapping of uint8 stor4;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779002;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779003;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779004;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779005;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779006;

function paused() {
    return bool(stor0)
}

function isWhitelisted(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(stor4[arg1][arg2])
}

function owner() {
    return owner
}

function getCampaigns() {
    return sub_bb2238ec.length
}

function sub_bb2238ec(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bb2238ec.length
    return sub_bb2238ec[arg1].field_0, 
           sub_bb2238ec[arg1].field_256,
           sub_bb2238ec[arg1].field_512,
           sub_bb2238ec[arg1].field_768,
           sub_bb2238ec[arg1].field_1024,
           sub_bb2238ec[arg1].field_1280,
           sub_bb2238ec[arg1].field_1536,
           sub_bb2238ec[arg1].field_1792,
           sub_bb2238ec[arg1].field_2048
}

function sub_cfcb1cd2(?) {
    require calldata.size - 4 >= 32
    return bool(sub_cfcb1cd2[arg1].field_0), sub_cfcb1cd2[arg1].field_256, sub_cfcb1cd2[arg1].field_512
}

function sub_f5bddf13(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_f5bddf13[arg1][arg2]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
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

function sub_b968cbaa(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 1000:
        revert with 0, 'Discount too much!'
    if arg1 >= sub_bb2238ec.length:
        revert with 0, 50
    if arg3 >= sub_bb2238ec[arg1].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist duration too loooooong!'
    sub_cfcb1cd2[arg1].field_0 = 1
    sub_cfcb1cd2[arg1].field_256 = arg2
    sub_cfcb1cd2[arg1].field_512 = arg3
}

function sub_818d3b55(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bb2238ec.length++
    sub_bb2238ec[sub_bb2238ec.length].field_0 = address(arg1)
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = address(arg3)
    storB10E[stor1.length] = arg4
    storB10E[stor1.length] = arg5
    storB10E[stor1.length] = arg6
    storB10E[stor1.length] = arg7
    storB10E[stor1.length] = arg8
    storB10E[stor1.length] = 0
}

function sub_07703019(?) {
    require calldata.size - 4 >= 288
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_bb2238ec.length:
        revert with 0, 50
    sub_bb2238ec[arg1].field_0 = address(arg2)
    sub_bb2238ec[arg1].field_256 = arg3
    sub_bb2238ec[arg1].field_512 = address(arg4)
    sub_bb2238ec[arg1].field_768 = arg5
    sub_bb2238ec[arg1].field_1024 = arg6
    sub_bb2238ec[arg1].field_1280 = arg7
    sub_bb2238ec[arg1].field_1536 = arg8
    sub_bb2238ec[arg1].field_1792 = arg9
}

function sub_5eaee41f(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 68).length == 1:
        idx = 0
        while idx < ('cd', 36).length:
            if 0 >= ('cd', 68).length:
                revert with 0, 50
            require ('cd', 68)[0] == bool(('cd', 68)[0])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = sha3(cd[4], 4)
            stor4[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] = uint8(bool(('cd', 68)[0]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'Wrong parameter!'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == bool(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = sha3(cd[4], 4)
            stor4[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function claim(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        call arg1 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Withdraw Native-Coin failed'
    else:
        mem[100] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = arg1
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg2 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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

function sub_e79d16e7(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg1 >= sub_bb2238ec.length:
        revert with 0, 50
    mem[ceil32(ceil32(arg3.length)) + 97] = bool(sub_cfcb1cd2[arg1].field_0)
    mem[ceil32(ceil32(arg3.length)) + 129] = sub_cfcb1cd2[arg1].field_256
    if block.timestamp < sub_bb2238ec[arg1].field_1280:
        revert with 0, 'Chest was not ready for purchasing!'
    if sub_bb2238ec[arg1].field_1280 > !sub_bb2238ec[arg1].field_1536:
        revert with 0, 17
    if block.timestamp > sub_bb2238ec[arg1].field_1280 + sub_bb2238ec[arg1].field_1536:
        revert with 0, 'This campaign was expired!'
    if sub_bb2238ec[arg1].field_2048 > !arg2:
        revert with 0, 17
    if sub_bb2238ec[arg1].field_2048 + arg2 > sub_bb2238ec[arg1].field_1024:
        if sub_bb2238ec[arg1].field_1024:
            revert with 0, 'Out-of-stock chest from merchant!'
    if sub_f5bddf13[arg1][msg.sender] > !arg2:
        revert with 0, 17
    if sub_f5bddf13[arg1][msg.sender] + arg2 > sub_bb2238ec[arg1].field_1792:
        revert with 0, 'Reached the limit of MaxBuy per address'
    if sub_bb2238ec[arg1].field_768 and arg2 > -1 / sub_bb2238ec[arg1].field_768:
        revert with 0, 17
    if sub_f5bddf13[arg1][msg.sender] > !arg2:
        revert with 0, 17
    sub_f5bddf13[arg1][msg.sender] += arg2
    if sub_bb2238ec[arg1].field_1280 > !sub_cfcb1cd2[arg1].field_512:
        revert with 0, 17
    if block.timestamp > sub_bb2238ec[arg1].field_1280 + sub_cfcb1cd2[arg1].field_512:
        if sub_bb2238ec[arg1].field_2048 > !arg2:
            revert with 0, 17
        sub_bb2238ec[arg1].field_2048 += arg2
        if not sub_bb2238ec[arg1].field_512:
            if msg.value < sub_bb2238ec[arg1].field_768 * arg2:
                revert with 0, 'Paid amount was less than total amount!'
            if msg.value > sub_bb2238ec[arg1].field_768 * arg2:
                if msg.value < sub_bb2238ec[arg1].field_768 * arg2:
                    revert with 0, 17
                call msg.sender with:
                   value msg.value - (sub_bb2238ec[arg1].field_768 * arg2) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Refund Native-Coin failed'
        else:
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(sub_bb2238ec[arg1].field_512):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(arg3.length)) + 389 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_bb2238ec[arg1].field_768 * arg2, 0
            call sub_bb2238ec[arg1].field_512 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_bb2238ec[arg1].field_768 * arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_bb2238ec[arg1].field_768 * arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if arg3.length:
                        revert with arg3[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg3.length:
                    require arg3.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(ceil32(arg3.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(arg3.length)) + 421] == bool(mem[ceil32(ceil32(arg3.length)) + 421])
                    if not mem[ceil32(ceil32(arg3.length)) + 421]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if not sub_cfcb1cd2[arg1].field_0:
            if sub_bb2238ec[arg1].field_2048 > !arg2:
                revert with 0, 17
            sub_bb2238ec[arg1].field_2048 += arg2
            if not sub_bb2238ec[arg1].field_512:
                if msg.value < sub_bb2238ec[arg1].field_768 * arg2:
                    revert with 0, 'Paid amount was less than total amount!'
                if msg.value > sub_bb2238ec[arg1].field_768 * arg2:
                    if msg.value < sub_bb2238ec[arg1].field_768 * arg2:
                        revert with 0, 17
                    call msg.sender with:
                       value msg.value - (sub_bb2238ec[arg1].field_768 * arg2) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Refund Native-Coin failed'
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_bb2238ec[arg1].field_512):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg3.length)) + 389 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_bb2238ec[arg1].field_768 * arg2, 0
                call sub_bb2238ec[arg1].field_512 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_bb2238ec[arg1].field_768 * arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_bb2238ec[arg1].field_768 * arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg3.length:
                            revert with arg3[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg3.length:
                        require arg3.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg3.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg3.length)) + 421] == bool(mem[ceil32(ceil32(arg3.length)) + 421])
                        if not mem[ceil32(ceil32(arg3.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if not stor4[arg1][msg.sender]:
                revert with 0, 'You was NOT served, yet!'
            if 1000 < sub_cfcb1cd2[arg1].field_256:
                revert with 0, 17
            if sub_bb2238ec[arg1].field_768 * arg2 and -sub_cfcb1cd2[arg1].field_256 + 1000 > -1 / sub_bb2238ec[arg1].field_768 * arg2:
                revert with 0, 17
            if sub_bb2238ec[arg1].field_2048 > !arg2:
                revert with 0, 17
            sub_bb2238ec[arg1].field_2048 += arg2
            if not sub_bb2238ec[arg1].field_512:
                if msg.value < (1000 * sub_bb2238ec[arg1].field_768 * arg2) - (sub_cfcb1cd2[arg1].field_256 * sub_bb2238ec[arg1].field_768 * arg2) / 1000:
                    revert with 0, 'Paid amount was less than total amount!'
                if msg.value > (1000 * sub_bb2238ec[arg1].field_768 * arg2) - (sub_cfcb1cd2[arg1].field_256 * sub_bb2238ec[arg1].field_768 * arg2) / 1000:
                    if msg.value < (1000 * sub_bb2238ec[arg1].field_768 * arg2) - (sub_cfcb1cd2[arg1].field_256 * sub_bb2238ec[arg1].field_768 * arg2) / 1000:
                        revert with 0, 17
                    call msg.sender with:
                       value msg.value - ((1000 * sub_bb2238ec[arg1].field_768 * arg2) - (sub_cfcb1cd2[arg1].field_256 * sub_bb2238ec[arg1].field_768 * arg2) / 1000) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Refund Native-Coin failed'
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(sub_bb2238ec[arg1].field_512):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(ceil32(arg3.length)) + 389 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), (1000 * sub_bb2238ec[arg1].field_768 * arg2) - (sub_cfcb1cd2[arg1].field_256 * sub_bb2238ec[arg1].field_768 * arg2) / 1000, 0
                call sub_bb2238ec[arg1].field_512 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), (1000 * sub_bb2238ec[arg1].field_768 * arg2) - (sub_cfcb1cd2[arg1].field_256 * sub_bb2238ec[arg1].field_768 * arg2) / 1000, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), (1000 * sub_bb2238ec[arg1].field_768 * arg2) - (sub_cfcb1cd2[arg1].field_256 * sub_bb2238ec[arg1].field_768 * arg2) / 1000, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if arg3.length:
                            revert with arg3[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg3.length:
                        require arg3.length >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(ceil32(arg3.length)) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(ceil32(arg3.length)) + 421] == bool(mem[ceil32(ceil32(arg3.length)) + 421])
                        if not mem[ceil32(ceil32(arg3.length)) + 421]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(sub_bb2238ec[arg1].field_0)
    call sub_bb2238ec[arg1].field_0.0x731133e9 with:
         gas gas_remaining wei
        args msg.sender, sub_bb2238ec[arg1].field_256, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
