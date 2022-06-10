contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint256 _maxSupply;
mapping of address sub_f0637508;
mapping of uint256 checkpoints;
mapping of uint8 stor9;
mapping of uint256 lastClaim;
uint256 sub_b9347051;
address sub_30359951Address;
address sub_8409a4c2Address;
uint256 sub_ac60e6c5;
uint256 sub_c9702eae;
uint256 sub_8a582303;
mapping of uint256 sub_d3224e84;
array of uint256 sub_eab72868;
mapping of uint8 stor19;
mapping of uint8 stor20;
mapping of uint8 stor21;
uint256 balance;
uint256 stor23;

function sub_098088bc(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function totalSupply() payable {
    return totalSupply
}

function _maxSupply() payable {
    return _maxSupply
}

function sub_30359951(?) payable {
    return sub_30359951Address
}

function lastClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lastClaim[arg1]
}

function sub_5eef2108(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_8409a4c2(?) payable {
    return sub_8409a4c2Address
}

function sub_8a582303(?) payable {
    return sub_8a582303
}

function owner() payable {
    return owner
}

function sub_ac60e6c5(?) payable {
    return sub_ac60e6c5
}

function sub_ae516e71(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function sub_af9d1632(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function balance() payable {
    return balance
}

function checkpoints(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return checkpoints[arg1]
}

function sub_b9347051(?) payable {
    return sub_b9347051
}

function sub_c9702eae(?) payable {
    return sub_c9702eae
}

function sub_d3224e84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d3224e84[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_eab72868(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_eab72868[arg1]
    return sub_eab72868[arg1][arg2]
}

function sub_f0637508(?) payable {
    require calldata.size - 4 >= 32
    return sub_f0637508[arg1]
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

function sub_3ed5c999(?) payable {
    require calldata.size - 4 >= 32
    if stor21[arg1]:
        return 1
    if not lastClaim[arg1]:
        return not bool(lastClaim[arg1])
    if block.timestamp < lastClaim[arg1]:
        revert with 0, 17
    return block.timestamp - lastClaim[arg1] >= sub_b9347051
}

function getbalance() payable {
    require ext_code.size(sub_8409a4c2Address)
    staticcall sub_8409a4c2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balance = ext_call.return_data[0]
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

function sub_42d5eafe(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 19
        stor19[cd[((32 * idx) + cd[4] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_91c42378(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 21
        stor21[cd[((32 * idx) + cd[4] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f01b62ab(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 20
        stor20[cd[((32 * idx) + cd[4] + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_b6bae363(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[36] and ('cd', 4).length > -1 / cd[36]:
        revert with 0, 17
    if totalSupply > !(cd[36] * ('cd', 4).length):
        revert with 0, 17
    if totalSupply + (cd[36] * ('cd', 4).length) > _maxSupply:
        revert with 0, 'airdrop less tokens'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !cd[36]:
            revert with 0, 17
        totalSupply += cd[36]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 0
        if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > !cd[36]:
            revert with 0, 17
        balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] += cd[36]
        mem[96] = cd[36]
        emit Transfer(cd[36], 0, address(cd[((32 * idx) + cd[4] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function deposit(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_30359951Address)
        staticcall sub_30359951Address.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == mem[_20 + 12 len 20]
        if mem[_20 + 12 len 20] != msg.sender:
            revert with 0, 'Sender must be owner'
        if idx >= arg1.length:
            revert with 0, 50
        if stor9[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 'token already deposited'
        if idx >= arg1.length:
            revert with 0, 50
        checkpoints[cd[((32 * idx) + arg1 + 36)]] = block.timestamp
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_30359951Address)
        call sub_30359951Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= arg1.length:
            revert with 0, 50
        stor9[cd[((32 * idx) + arg1 + 36)]] = 1
        sub_eab72868[msg.sender]++
        sub_eab72868[msg.sender][sub_eab72868[msg.sender]] = cd[((32 * idx) + arg1 + 36)]
        if sub_d3224e84[msg.sender] == -1:
            revert with 0, 17
        sub_d3224e84[msg.sender]++
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 7
        sub_f0637508[cd[((32 * idx) + arg1 + 36)]] = msg.sender
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg2:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        if balanceOf[arg1] > -1:
            revert with 0, 17
        emit Transfer(0, msg.sender, arg1);
    else:
        if arg2 < arg2 / 10:
            revert with 0, 17
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if balanceOf[address(msg.sender)] < arg2 / 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2 / 10
        if balanceOf[57005] > !(arg2 / 10):
            revert with 0, 17
        balanceOf[57005] += arg2 / 10
        emit Transfer((arg2 / 10), msg.sender, 57005);
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2 - (arg2 / 10):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
        if balanceOf[arg1] > !(arg2 - (arg2 / 10)):
            revert with 0, 17
        balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 / 10)
        emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
    return 1
}

function withdraw(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if not stor9[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 'No tokens to withdraw'
        if idx >= arg1.length:
            revert with 0, 50
        if sub_f0637508[cd[((32 * idx) + arg1 + 36)]] != msg.sender:
            revert with 0, 'Not your token'
        if idx >= arg1.length:
            revert with 0, 50
        if not stor21[cd[((32 * idx) + arg1 + 36)]]:
            if lastClaim[cd[((32 * idx) + arg1 + 36)]]:
                if block.timestamp < lastClaim[cd[((32 * idx) + arg1 + 36)]]:
                    revert with 0, 17
                if block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] < sub_b9347051:
                    revert with 0, 'Do not claim'
        if idx >= arg1.length:
            revert with 0, 50
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_30359951Address)
        call sub_30359951Address.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= arg1.length:
            revert with 0, 50
        stor9[cd[((32 * idx) + arg1 + 36)]] = 0
        checkpoints[cd[((32 * idx) + arg1 + 36)]] = 0
        s = 0
        while s < sub_eab72868[msg.sender]:
            if idx >= arg1.length:
                revert with 0, 50
            if s >= sub_eab72868[address(msg.sender)]:
                revert with 0, 50
            if sub_eab72868[address(msg.sender)][s] == cd[((32 * idx) + arg1 + 36)]:
                if sub_eab72868[msg.sender] < 1:
                    revert with 0, 17
                if sub_eab72868[msg.sender] - 1 >= sub_eab72868[msg.sender]:
                    revert with 0, 50
                if s >= sub_eab72868[msg.sender]:
                    revert with 0, 50
                sub_eab72868[msg.sender][s] = sub_eab72868[msg.sender][sub_eab72868[msg.sender]]
                if not sub_eab72868[msg.sender]:
                    revert with 0, 49
                sub_eab72868[msg.sender][sub_eab72868[msg.sender]] = 0
                sub_eab72868[msg.sender]--
            if s == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 18
            s = s + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 17
        if not sub_d3224e84[msg.sender]:
            revert with 0, 17
        sub_d3224e84[msg.sender]--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg3:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        if balanceOf[arg2] > -1:
            revert with 0, 17
        emit Transfer(0, arg1, arg2);
    else:
        if arg3 < arg3 / 10:
            revert with 0, 17
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if balanceOf[address(arg1)] < arg3 / 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3 / 10
        if balanceOf[57005] > !(arg3 / 10):
            revert with 0, 17
        balanceOf[57005] += arg3 / 10
        emit Transfer((arg3 / 10), arg1, 57005);
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3 - (arg3 / 10):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
        if balanceOf[arg2] > !(arg3 - (arg3 / 10)):
            revert with 0, 17
        balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 / 10)
        emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_917bd9ea(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_8409a4c2Address)
    staticcall sub_8409a4c2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if cd[36] and ('cd', 4).length > -1 / cd[36]:
        revert with 0, 17
    if cd[36] * ('cd', 4).length <= ext_call.return_data[0]:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = cd[36]
            require ext_code.size(sub_8409a4c2Address)
            call sub_8409a4c2Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[36]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_27] == bool(mem[_27])
            if not mem[_27]:
                revert with 0, 'Unable to transfer token to the account'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(sub_8409a4c2Address)
        staticcall sub_8409a4c2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if not ('cd', 4).length:
            revert with 0, 18
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = ext_call.return_data[0] / ('cd', 4).length
            require ext_code.size(sub_8409a4c2Address)
            call sub_8409a4c2Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), ext_call.return_data[0] / ('cd', 4).length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_28] == bool(mem[_28])
            if not mem[_28]:
                revert with 0, 'Unable to transfer token to the account'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function collect(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    while idx < arg1.length:
        if not stor9[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 'No tokens to withdarw'
        if idx >= arg1.length:
            revert with 0, 50
        if sub_f0637508[cd[((32 * idx) + arg1 + 36)]] != msg.sender:
            revert with 0, 'Not your token'
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 21
        if stor21[cd[((32 * idx) + arg1 + 36)]]:
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 9
            if not stor9[cd[((32 * idx) + arg1 + 36)]]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                require ext_code.size(sub_8409a4c2Address)
                call sub_8409a4c2Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1170 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1170] == bool(mem[_1170])
                if not mem[_1170]:
                    revert with 0, 'Unable to transfer token to the account'
            else:
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 21
                if lastClaim[cd[((32 * idx) + arg1 + 36)]]:
                    if block.timestamp < lastClaim[cd[((32 * idx) + arg1 + 36)]]:
                        revert with 0, 17
                    if not stor20[cd[((32 * idx) + arg1 + 36)]]:
                        if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                            if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                if False and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > 0:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1195 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 <= mem[_1195]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1312 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1312] == bool(mem[_1312])
                                    if not mem[_1312]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1288 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1336 = mem[_1288]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1336
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1336
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1466 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1466] == bool(mem[_1466])
                                    if not mem[_1466]:
                                        revert with 0, 'Unable to transfer token to the account'
                            else:
                                if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1203 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= mem[_1203]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1337 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1337] == bool(mem[_1337])
                                    if not mem[_1337]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1313 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1358 = mem[_1313]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1358
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1358
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1505 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1505] == bool(mem[_1505])
                                    if not mem[_1505]:
                                        revert with 0, 'Unable to transfer token to the account'
                        else:
                            if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                if sub_c9702eae and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1204 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= mem[_1204]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1338 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1338] == bool(mem[_1338])
                                    if not mem[_1338]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1314 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1359 = mem[_1314]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1359
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1359
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1506 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1506] == bool(mem[_1506])
                                    if not mem[_1506]:
                                        revert with 0, 'Unable to transfer token to the account'
                            else:
                                if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1212 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= mem[_1212]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1360 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1360] == bool(mem[_1360])
                                    if not mem[_1360]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1339 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1377 = mem[_1339]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1377
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1377
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1542 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1542] == bool(mem[_1542])
                                    if not mem[_1542]:
                                        revert with 0, 'Unable to transfer token to the account'
                    else:
                        if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                            if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                if sub_ac60e6c5 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_ac60e6c5:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1205 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5) <= mem[_1205]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1340 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1340] == bool(mem[_1340])
                                    if not mem[_1340]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1316 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1361 = mem[_1316]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1361
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1361
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1508 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1508] == bool(mem[_1508])
                                    if not mem[_1508]:
                                        revert with 0, 'Unable to transfer token to the account'
                            else:
                                if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1213 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= mem[_1213]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1362 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1362] == bool(mem[_1362])
                                    if not mem[_1362]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1341 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1379 = mem[_1341]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1379
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1379
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1543 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1543] == bool(mem[_1543])
                                    if not mem[_1543]:
                                        revert with 0, 'Unable to transfer token to the account'
                        else:
                            if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                if sub_c9702eae and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1214 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= mem[_1214]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1363 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1363] == bool(mem[_1363])
                                    if not mem[_1363]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1342 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1380 = mem[_1342]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1380
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1380
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1544 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1544] == bool(mem[_1544])
                                    if not mem[_1544]:
                                        revert with 0, 'Unable to transfer token to the account'
                            else:
                                if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1222 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= mem[_1222]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1381 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1381] == bool(mem[_1381])
                                    if not mem[_1381]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1364 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1395 = mem[_1364]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1395
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1395
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1573 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1573] == bool(mem[_1573])
                                    if not mem[_1573]:
                                        revert with 0, 'Unable to transfer token to the account'
                else:
                    if block.timestamp < checkpoints[cd[((32 * idx) + arg1 + 36)]]:
                        revert with 0, 17
                    if not stor20[cd[((32 * idx) + arg1 + 36)]]:
                        if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                            if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                if False and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > 0:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1207 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 0 <= mem[_1207]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1344 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1344] == bool(mem[_1344])
                                    if not mem[_1344]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1320 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1365 = mem[_1320]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1365
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1365
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1513 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1513] == bool(mem[_1513])
                                    if not mem[_1513]:
                                        revert with 0, 'Unable to transfer token to the account'
                            else:
                                if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1215 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= mem[_1215]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1366 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1366] == bool(mem[_1366])
                                    if not mem[_1366]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1345 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1383 = mem[_1345]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1383
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1383
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1546 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1546] == bool(mem[_1546])
                                    if not mem[_1546]:
                                        revert with 0, 'Unable to transfer token to the account'
                        else:
                            if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                if sub_c9702eae and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1216 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= mem[_1216]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1367 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1367] == bool(mem[_1367])
                                    if not mem[_1367]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1346 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1384 = mem[_1346]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1384
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1384
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1547 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1547] == bool(mem[_1547])
                                    if not mem[_1547]:
                                        revert with 0, 'Unable to transfer token to the account'
                            else:
                                if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1224 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= mem[_1224]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1385 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1385] == bool(mem[_1385])
                                    if not mem[_1385]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1368 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1398 = mem[_1368]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1398
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1398
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1575 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1575] == bool(mem[_1575])
                                    if not mem[_1575]:
                                        revert with 0, 'Unable to transfer token to the account'
                    else:
                        if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                            if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                if sub_ac60e6c5 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_ac60e6c5:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1217 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5) <= mem[_1217]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1369 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1369] == bool(mem[_1369])
                                    if not mem[_1369]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1348 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1386 = mem[_1348]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1386
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1386
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1549 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1549] == bool(mem[_1549])
                                    if not mem[_1549]:
                                        revert with 0, 'Unable to transfer token to the account'
                            else:
                                if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1225 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= mem[_1225]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1387 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1387] == bool(mem[_1387])
                                    if not mem[_1387]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1370 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1400 = mem[_1370]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1400
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1400
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1576 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1576] == bool(mem[_1576])
                                    if not mem[_1576]:
                                        revert with 0, 'Unable to transfer token to the account'
                        else:
                            if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                if sub_c9702eae and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1226 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= mem[_1226]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1388 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1388] == bool(mem[_1388])
                                    if not mem[_1388]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1371 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1401 = mem[_1371]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1401
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1401
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1577 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1577] == bool(mem[_1577])
                                    if not mem[_1577]:
                                        revert with 0, 'Unable to transfer token to the account'
                            else:
                                if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                    revert with 0, 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(sub_8409a4c2Address)
                                staticcall sub_8409a4c2Address.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1235 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= mem[_1235]:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1402 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1402] == bool(mem[_1402])
                                    if not mem[_1402]:
                                        revert with 0, 'Unable to transfer token to the account'
                                else:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1389 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1413 = mem[_1389]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1413
                                    require ext_code.size(sub_8409a4c2Address)
                                    call sub_8409a4c2Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1413
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1601 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1601] == bool(mem[_1601])
                                    if not mem[_1601]:
                                        revert with 0, 'Unable to transfer token to the account'
        else:
            _1147 = mem[64]
            mem[mem[64] + 32] = block.timestamp
            mem[mem[64] + 64] = address(msg.sender)
            mem[mem[64] + 84] = stor23
            _1150 = mem[64]
            mem[mem[64]] = 84
            mem[64] = mem[64] + 116
            if 100 > !(sha3(mem[_1150 + 32 len mem[_1150]]) % 900):
                revert with 0, 17
            if stor23 == -1:
                revert with 0, 17
            stor23++
            if idx >= arg1.length:
                revert with 0, 50
            if bool((sha3(mem[_1150 + 32 len mem[_1150]]) % 900) + 100):
                if not stor9[cd[((32 * idx) + arg1 + 36)]]:
                    mem[_1147 + 120] = msg.sender
                    mem[_1147 + 152] = 0
                    require ext_code.size(sub_8409a4c2Address)
                    call sub_8409a4c2Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    mem[_1147 + 116] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1147 + ceil32(return_data.size) + 116
                else:
                    if lastClaim[cd[((32 * idx) + arg1 + 36)]]:
                        if block.timestamp < lastClaim[cd[((32 * idx) + arg1 + 36)]]:
                            revert with 0, 17
                        if not stor20[cd[((32 * idx) + arg1 + 36)]]:
                            if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if False and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > 0:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = 0
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                            else:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_c9702eae and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                        else:
                            if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_ac60e6c5 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_ac60e6c5:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                            else:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_c9702eae and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                    else:
                        if block.timestamp < checkpoints[cd[((32 * idx) + arg1 + 36)]]:
                            revert with 0, 17
                        if not stor20[cd[((32 * idx) + arg1 + 36)]]:
                            if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if False and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > 0:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = 0
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                            else:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_c9702eae and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                        else:
                            if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_ac60e6c5 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_ac60e6c5:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                            else:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_c9702eae and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = msg.sender
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = msg.sender
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
            else:
                if not stor9[cd[((32 * idx) + arg1 + 36)]]:
                    mem[_1147 + 120] = 57005
                    mem[_1147 + 152] = 0
                    require ext_code.size(sub_8409a4c2Address)
                    call sub_8409a4c2Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args 57005, 0
                    mem[_1147 + 116] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1147 + ceil32(return_data.size) + 116
                else:
                    if lastClaim[cd[((32 * idx) + arg1 + 36)]]:
                        if block.timestamp < lastClaim[cd[((32 * idx) + arg1 + 36)]]:
                            revert with 0, 17
                        if not stor20[cd[((32 * idx) + arg1 + 36)]]:
                            if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if False and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > 0:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = 0
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, 0
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                            else:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_c9702eae and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                        else:
                            if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_ac60e6c5 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_ac60e6c5:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_ac60e6c5) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                            else:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_c9702eae and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_c9702eae) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - lastClaim[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_8a582303) - (lastClaim[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                    else:
                        if block.timestamp < checkpoints[cd[((32 * idx) + arg1 + 36)]]:
                            revert with 0, 17
                        if not stor20[cd[((32 * idx) + arg1 + 36)]]:
                            if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if False and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > 0:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 0 <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = 0
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, 0
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                            else:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_c9702eae and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                        else:
                            if not stor19[cd[((32 * idx) + arg1 + 36)]]:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_ac60e6c5 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_ac60e6c5:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_ac60e6c5) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_ac60e6c5)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                            else:
                                if not stor21[cd[((32 * idx) + arg1 + 36)]]:
                                    if sub_c9702eae and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_c9702eae:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_c9702eae) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_c9702eae)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
                                else:
                                    if sub_8a582303 and block.timestamp - checkpoints[cd[((32 * idx) + arg1 + 36)]] > -1 / sub_8a582303:
                                        revert with 0, 17
                                    mem[_1147 + 120] = this.address
                                    require ext_code.size(sub_8409a4c2Address)
                                    staticcall sub_8409a4c2Address.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_1147 + 116] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303) <= ext_call.return_data[0]:
                                        mem[_1147 + ceil32(return_data.size) + 120] = 57005
                                        mem[_1147 + ceil32(return_data.size) + 152] = (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, (block.timestamp * sub_8a582303) - (checkpoints[cd[((32 * idx) + arg1 + 36)]] * sub_8a582303)
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (2 * ceil32(return_data.size)) + 116
                                    else:
                                        mem[_1147 + ceil32(return_data.size) + 120] = this.address
                                        require ext_code.size(sub_8409a4c2Address)
                                        staticcall sub_8409a4c2Address.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_1147 + ceil32(return_data.size) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 120] = 57005
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 152] = ext_call.return_data[0]
                                        require ext_code.size(sub_8409a4c2Address)
                                        call sub_8409a4c2Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args 57005, ext_call.return_data[0]
                                        mem[_1147 + (2 * ceil32(return_data.size)) + 116] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1147 + (4 * ceil32(return_data.size)) + 116
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Unable to transfer token to the account'
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 10
        lastClaim[cd[((32 * idx) + arg1 + 36)]] = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
