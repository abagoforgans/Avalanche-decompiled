contract main {




// =====================  Runtime code  =====================


#
#  - addMerkleRoot(bytes32 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#  - sub_cf3dc76b(?)
#  - addRecipient(address arg1, uint256 arg2)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
uint256 domainSeparator;
array of uint256 merkleRoots;
address redeemTokenAddress;
uint256 sub_67e8ec0c;
uint256 sub_0423c7de;
uint256 sub_f3299694;
uint8 sub_d0e4fe8f; offset 160
address factoryAddress;
mapping of uint8 stor158;

function sub_0423c7de(?) payable {
    return sub_0423c7de
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function redeemToken() payable {
    return redeemTokenAddress
}

function decimals() payable {
    return decimals
}

function sub_67e8ec0c(?) payable {
    return sub_67e8ec0c
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function merkleRoots(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < merkleRoots.length
    return merkleRoots[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function factory() payable {
    return factoryAddress
}

function sub_d0e4fe8f(?) payable {
    require sub_d0e4fe8f < 2
    return sub_d0e4fe8f
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f3299694(?) payable {
    return sub_f3299694
}

function domainSeparator() payable {
    return domainSeparator
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function overrideFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.feeCollector() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller is not fee collector'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getMinFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 < ext_call.return_data[0]:
        revert with 0, 'Fee goes beyond rank'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getMaxFee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Fee goes beyond rank'
    sub_67e8ec0c = arg1
}

function claimProjectTokensByFeeCollector() payable {
    if sub_f3299694 + (8760 * 24 * 3600) < sub_f3299694:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < sub_f3299694 + (8760 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot claim project tokens before allowed date'
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.feeCollector() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Cannot claim project tokens if caller is not fee collector'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(redeemTokenAddress)
    staticcall redeemTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(redeemTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call redeemTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit ClaimedByFeeCollector(ext_call.return_data[0], address(ext_call.return_data[0]));
}

function redeem(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if block.timestamp < sub_f3299694:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot redeem tokens before unlock timestamp'
    if not arg1:
        revert with 0, 'Recipient cannot be zero address'
    if arg2 <= 0:
        revert with 0, 'Amount should be more than 0'
    mem[100] = arg1
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Cannot burn more than available amount of tokens'
    if not arg1:
        revert with 0, 'ERC20: burn from the zero address'
    mem[ceil32(return_data.size) + 96] = 34
    mem[ceil32(return_data.size) + 128 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    34,
                    0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 162 len 30] >> 16,
                    0
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 260] = arg2
    mem[ceil32(return_data.size) + 192] = 68
    mem[ceil32(return_data.size) + 228 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 224 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 292] = 32
    mem[ceil32(return_data.size) + 324] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(redeemTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 356 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
    mem[ceil32(return_data.size) + 424] = 0
    call redeemTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 388] == bool(mem[ceil32(return_data.size) + 388])
            if not mem[ceil32(return_data.size) + 388]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Redeemed(arg2, arg1);
}

function addRecipients(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require sub_d0e4fe8f <= 1
    if sub_d0e4fe8f != 1:
        revert with 0, 'Types do not match'
    if arg1.length != arg2.length:
        revert with 0, 'Recipients should be the same length with amounts'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        _282 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg1.length
        _288 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _292 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
            revert with 0, 'Amount should be more than 0'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: mint to the zero address'
        if mem[(32 * idx) + (32 * arg1.length) + 160] + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] < balanceOf[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 51
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(_292, 0, address(_288));
        idx = idx + 1
        s = _282 + s
        continue 
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(redeemTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * arg1.length) + (32 * arg2.length) + 356 len 128] = 0, msg.sender, address(this.address), _282 * arg1.length, 0
    call redeemTokenAddress with:
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), _282 * arg1.length, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg1.length:
                revert with memory
                  from 128
                   len arg1.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length:
            require arg1.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(32 * arg1.length) + (32 * arg2.length) + 388] == bool(mem[(32 * arg1.length) + (32 * arg2.length) + 388])
            if not mem[(32 * arg1.length) + (32 * arg2.length) + 388]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_eddb0e26(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] == address(cd[68])
    require sub_d0e4fe8f <= 1
    if sub_d0e4fe8f:
        revert with 0, 'Types do not match'
    if not address(cd[68]):
        revert with 0, 'Recipient cannot be zero address'
    if cd[36] >= merkleRoots.length:
        revert with 0, 'Merkle root with this index does not exists'
    mem[0] = address(cd[68])
    mem[32] = sha3(merkleRoots[cd[36]], 158)
    if 1 == bool(stor158[stor152[cd[36]]][address(cd[68])]):
        revert with 0, 'User can claim tokens only once'
    mem[(32 * ('cd', 4).length) + 160] = 1
    mem[(32 * ('cd', 4).length) + 192] = address(cd[68])
    mem[(32 * ('cd', 4).length) + 224] = cd[100]
    mem[(32 * ('cd', 4).length) + 128] = 96
    mem[64] = (32 * ('cd', 4).length) + 256
    idx = 0
    s = 0
    t = 0
    while idx <= ('cd', 4).length - 1:
        require idx < mem[96]
        _294 = mem[(32 * idx) + 128]
        if s + sha3(mem[(32 * ('cd', 4).length) + 160 len mem[(32 * ('cd', 4).length) + 128]]) >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s + sha3(mem[(32 * ('cd', 4).length) + 160 len mem[(32 * ('cd', 4).length) + 128]])
            _300 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_300 + 32 len mem[_300]])
            t = _294
            continue 
        mem[mem[64] + 32] = s + sha3(mem[(32 * ('cd', 4).length) + 160 len mem[(32 * ('cd', 4).length) + 128]])
        mem[mem[64] + 64] = _294
        _303 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_303 + 32 len mem[_303]])
        t = _294
        continue 
    if merkleRoots[cd[36]] != s:
        revert with 0, 'Invalid proof'
    if cd[100] <= 0:
        revert with 0, 'Amount should be more than 0'
    if not address(cd[68]):
        revert with 0, 'ERC20: mint to the zero address'
    if cd[100] + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += cd[100]
    if cd[100] + balanceOf[address(cd[68])] < balanceOf[address(cd[68])]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(cd[68])] += cd[100]
    emit Transfer(cd[100], 0, address(cd[68]));
    mem[0] = address(cd[68])
    mem[32] = sha3(merkleRoots[cd[36]], 158)
    stor158[stor152[cd[36]]][address(cd[68])] = 1
    if block.timestamp >= sub_f3299694:
        if not address(cd[68]):
            revert with 0, 'Recipient cannot be zero address'
        if cd[100] <= 0:
            revert with 0, 'Amount should be more than 0'
        mem[mem[64] + 4] = address(cd[68])
        require ext_code.size(this.address)
        staticcall this.address.0x70a08231 with:
                gas gas_remaining wei
               args address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if cd[100] > mem[_325]:
            revert with 0, 'Cannot burn more than available amount of tokens'
        if not address(cd[68]):
            revert with 0, 'ERC20: burn from the zero address'
        _330 = mem[64]
        mem[64] = mem[64] + 96
        mem[_330] = 34
        mem[_330 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if cd[100] > balanceOf[address(cd[68])]:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 34
            mem[mem[64] + 68 len 64] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_330 + 66 len 30]
            revert with 0, 32, 34, mem[mem[64] + 68 len 34], 0
        mem[0] = address(cd[68])
        mem[32] = 51
        balanceOf[address(cd[68])] -= cd[100]
        if cd[100] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= cd[100]
        emit Transfer(cd[100], address(cd[68]), 0);
        _343 = mem[64]
        mem[mem[64] + 36] = address(cd[68])
        mem[mem[64] + 68] = cd[100]
        _344 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_343 + 100] = 32
        mem[_343 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(redeemTokenAddress):
            revert with 0, 'Address: call to non-contract'
        _351 = mem[_344]
        mem[_343 + 164 len ceil32(mem[_344])] = mem[_344 + 32 len ceil32(mem[_344])]
        if ceil32(_351) > _351:
            mem[_351 + _343 + 164] = 0
        call redeemTokenAddress with:
             gas gas_remaining wei
            args mem[_343 + 168 len _351 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_343 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_343 + 196] == bool(mem[_343 + 196])
                if not mem[_343 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Redeemed(cd[100], address(cd[68]));
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if block.timestamp < sub_0423c7de:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer before activation timestamp'
    if sub_67e8ec0c != 0:
        if not arg2:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.feeCollector() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            if 0 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                            0
            if balanceOf[address(ext_call.return_data[0])] < balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])]
            emit Transfer(0, msg.sender, address(ext_call.return_data[0]));
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 262 len 26] >> 48,
                            0
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if sub_67e8ec0c * arg2 / arg2 != sub_67e8ec0c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.feeCollector() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            if sub_67e8ec0c * arg2 / 100000 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                            0
            balanceOf[address(msg.sender)] -= sub_67e8ec0c * arg2 / 100000
            if (sub_67e8ec0c * arg2 / 100000) + balanceOf[address(ext_call.return_data[0])] < balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(ext_call.return_data[0])] += sub_67e8ec0c * arg2 / 100000
            emit Transfer((sub_67e8ec0c * arg2 / 100000), msg.sender, address(ext_call.return_data[0]));
            if sub_67e8ec0c * arg2 / 100000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg2 - (sub_67e8ec0c * arg2 / 100000) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 262 len 26] >> 48,
                            0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (sub_67e8ec0c * arg2 / 100000)
            if arg2 - (sub_67e8ec0c * arg2 / 100000) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - (sub_67e8ec0c * arg2 / 100000) + balanceOf[arg1]
            emit Transfer((arg2 - (sub_67e8ec0c * arg2 / 100000)), msg.sender, arg1);
    else:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.fee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.feeCollector() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            if 0 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 166 len 26] >> 48,
                            0
            if balanceOf[address(ext_call.return_data[0])] < balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])]
            emit Transfer(0, msg.sender, address(ext_call.return_data[0]));
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 262 len 26] >> 48,
                            0
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if ext_call.return_data[0] * arg2 / arg2 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.feeCollector() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] * arg2 / 100000 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 166 len 26] >> 48,
                            0
            balanceOf[address(msg.sender)] -= ext_call.return_data[0] * arg2 / 100000
            if (ext_call.return_data[0] * arg2 / 100000) + balanceOf[address(ext_call.return_data[0])] < balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0] * arg2 / 100000
            emit Transfer((ext_call.return_data[0] * arg2 / 100000), msg.sender, address(ext_call.return_data[0]));
            if ext_call.return_data[0] * arg2 / 100000 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg2 - (ext_call.return_data[0] * arg2 / 100000) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 262 len 26] >> 48,
                            0
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (ext_call.return_data[0] * arg2 / 100000)
            if arg2 - (ext_call.return_data[0] * arg2 / 100000) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - (ext_call.return_data[0] * arg2 / 100000) + balanceOf[arg1]
            emit Transfer((arg2 - (ext_call.return_data[0] * arg2 / 100000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp < sub_0423c7de:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer before activation timestamp'
    if sub_67e8ec0c != 0:
        if not arg3:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.feeCollector() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                            0
            if balanceOf[address(ext_call.return_data[0])] < balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])]
            emit Transfer(0, arg1, address(ext_call.return_data[0]));
            if 0 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                            0
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                            0
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 456 len 24] >> 64,
                            0
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if sub_67e8ec0c * arg3 / arg3 != sub_67e8ec0c:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.feeCollector() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            if sub_67e8ec0c * arg3 / 100000 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                            0
            balanceOf[address(arg1)] -= sub_67e8ec0c * arg3 / 100000
            if (sub_67e8ec0c * arg3 / 100000) + balanceOf[address(ext_call.return_data[0])] < balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(ext_call.return_data[0])] += sub_67e8ec0c * arg3 / 100000
            emit Transfer((sub_67e8ec0c * arg3 / 100000), arg1, address(ext_call.return_data[0]));
            if sub_67e8ec0c * arg3 / 100000 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 264 len 24] >> 64,
                            0
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= sub_67e8ec0c * arg3 / 100000
            emit Approval((allowance[address(arg1)][address(msg.sender)] - (sub_67e8ec0c * arg3 / 100000)), arg1, msg.sender);
            if sub_67e8ec0c * arg3 / 100000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg3 - (sub_67e8ec0c * arg3 / 100000) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 358 len 26] >> 48,
                            0
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (sub_67e8ec0c * arg3 / 100000)
            if arg3 - (sub_67e8ec0c * arg3 / 100000) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 - (sub_67e8ec0c * arg3 / 100000) + balanceOf[arg2]
            emit Transfer((arg3 - (sub_67e8ec0c * arg3 / 100000)), arg1, arg2);
            if arg3 - (sub_67e8ec0c * arg3 / 100000) > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[ceil32(return_data.size) + 456 len 24] >> 64,
                            0
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (sub_67e8ec0c * arg3 / 100000)
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (sub_67e8ec0c * arg3 / 100000)), arg1, msg.sender);
    else:
        require ext_code.size(factoryAddress)
        staticcall factoryAddress.fee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.feeCollector() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 166 len 26] >> 48,
                            0
            if balanceOf[address(ext_call.return_data[0])] < balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(ext_call.return_data[0])] = balanceOf[address(ext_call.return_data[0])]
            emit Transfer(0, arg1, address(ext_call.return_data[0]));
            if 0 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 264 len 24] >> 64,
                            0
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                            0
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 456 len 24] >> 64,
                            0
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(factoryAddress)
            staticcall factoryAddress.feeCollector() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ERC20: transfer to the zero address'
            if ext_call.return_data[0] * arg3 / 100000 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 166 len 26] >> 48,
                            0
            balanceOf[address(arg1)] -= ext_call.return_data[0] * arg3 / 100000
            if (ext_call.return_data[0] * arg3 / 100000) + balanceOf[address(ext_call.return_data[0])] < balanceOf[address(ext_call.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(ext_call.return_data[0])] += ext_call.return_data[0] * arg3 / 100000
            emit Transfer((ext_call.return_data[0] * arg3 / 100000), arg1, address(ext_call.return_data[0]));
            if ext_call.return_data[0] * arg3 / 100000 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 264 len 24] >> 64,
                            0
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= ext_call.return_data[0] * arg3 / 100000
            emit Approval((allowance[address(arg1)][address(msg.sender)] - (ext_call.return_data[0] * arg3 / 100000)), arg1, msg.sender);
            if ext_call.return_data[0] * arg3 / 100000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg3 - (ext_call.return_data[0] * arg3 / 100000) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 358 len 26] >> 48,
                            0
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (ext_call.return_data[0] * arg3 / 100000)
            if arg3 - (ext_call.return_data[0] * arg3 / 100000) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 - (ext_call.return_data[0] * arg3 / 100000) + balanceOf[arg2]
            emit Transfer((arg3 - (ext_call.return_data[0] * arg3 / 100000)), arg1, arg2);
            if arg3 - (ext_call.return_data[0] * arg3 / 100000) > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[(2 * ceil32(return_data.size)) + 456 len 24] >> 64,
                            0
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (ext_call.return_data[0] * arg3 / 100000)
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (ext_call.return_data[0] * arg3 / 100000)), arg1, msg.sender);
    return 1
}



}
