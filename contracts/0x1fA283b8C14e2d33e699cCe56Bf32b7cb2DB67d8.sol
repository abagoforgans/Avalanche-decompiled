contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor6;
uint256 stor7;
uint8 stor8;
array of uint256 stor9;
array of uint256 sub_bc735818;
array of uint256 stor5010;
array of uint256 sub_be4c2d04;
array of uint256 sub_71960654;
uint256 sub_1c651eb5;
uint256 sub_00b20a73;
address randomGeneratorAddress;
address sub_9e19916dAddress;
uint256 sub_39f9c82c;
uint256 sub_5256421a;
uint256 price;
uint256 sub_0a9bf121;
uint256 sub_2de1214b;
uint256 sub_a64f057e;
mapping of uint256 sub_cc79221d;
mapping of uint256 sub_5cd3c5f4;

function sub_00b20a73(?) payable {
    return sub_00b20a73
}

function sub_0a9bf121(?) payable {
    return sub_0a9bf121
}

function totalSupply() payable {
    return totalSupply
}

function sub_1c651eb5(?) payable {
    return sub_1c651eb5
}

function sub_2de1214b(?) payable {
    return sub_2de1214b
}

function sub_39f9c82c(?) payable {
    return sub_39f9c82c
}

function sub_5256421a(?) payable {
    return sub_5256421a
}

function paused() payable {
    return bool(stor8)
}

function sub_5cd3c5f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5cd3c5f4[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_71960654(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 630
    return sub_71960654[arg1]
}

function owner() payable {
    return owner
}

function sub_9e19916d(?) payable {
    return sub_9e19916dAddress
}

function price() payable {
    return price
}

function sub_a64f057e(?) payable {
    return sub_a64f057e
}

function sub_bc735818(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 20
    return sub_bc735818[arg1]
}

function sub_be3af041(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 20
    require arg2 < 250
    return stor[arg2 + (250 * arg1) + 9]
}

function sub_be4c2d04(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 10
    return sub_be4c2d04[arg1]
}

function sub_cc79221d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cc79221d[arg1]
}

function randomGenerator() payable {
    return randomGeneratorAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0, 'NOT SUPPORT'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_19e30ace(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2de1214b = arg1
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function sub_bcc4a68a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a64f057e = arg1
}

function sub_c39cec66(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0a9bf121 = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0, 'NOT SUPPORT'
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8:
        revert with 0, 'Pausable: paused'
    stor8 = 1
    emit Paused(msg.sender);
}

function setRNG(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    randomGeneratorAddress = arg1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor8:
        revert with 0, 'Pausable: not paused'
    stor8 = 0
    emit Unpaused(msg.sender);
}

function setMinter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
}

function sub_5f4dfa03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_cc79221d[address(arg1)] > !sub_5cd3c5f4[address(arg1)]:
        revert with 0, 17
    return (sub_cc79221d[address(arg1)] + sub_5cd3c5f4[address(arg1)])
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor6[msg.sender]:
        revert with 0, 'NOT MINTER'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if sub_9e19916dAddress != msg.sender:
        revert with 0, 'Accept CRABADA only'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
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

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function sub_82ac40a3(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        if s >= 10:
            revert with 0, 50
        sub_be4c2d04[s] = cd[((32 * idx) + cd[36] + 36)]
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function sub_9cb3248d(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        if s >= 630:
            revert with 0, 50
        sub_71960654[s] = cd[((32 * idx) + cd[36] + 36)]
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_e638e5ac(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = cd[36]
    while idx < ('cd', 68).length:
        if cd[4] >= 20:
            revert with 0, 50
        if s >= 250:
            revert with 0, 50
        stor[s + (250 * cd[4]) + 9] = cd[((32 * idx) + cd[68] + 36)]
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_2efb70a8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(cd[4])
        mem[164] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(sub_9e19916dAddress)
        call sub_9e19916dAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), address(cd[4]), cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function mintBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not stor6[msg.sender]:
        revert with 0, 'NOT MINTER'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 17
        totalSupply += cd[((32 * idx) + arg2 + 36)]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0
        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] > !cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 17
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], 0, address(cd[((32 * idx) + arg1 + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[ceil32(stor3.length.field_1 % 128) + stor3.length.field_1 % 128 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[ceil32(stor4.length.field_1 % 128) + stor4.length.field_1 % 128 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}

function sub_a1e3612b(?) payable {
    if stor7 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor7 = 2
    if stor8:
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        revert with 0, 'ONLY NON CONTRACT CALL'
    if sub_5256421a >= 640:
        revert with 0, 'OUT OF PURE CRAB'
    if sub_a64f057e:
        if sub_5cd3c5f4[msg.sender] >= sub_a64f057e:
            revert with 0, 'MAX PURE'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < sub_0a9bf121:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_0a9bf121
    if balanceOf[this.address] > !sub_0a9bf121:
        revert with 0, 17
    balanceOf[this.address] += sub_0a9bf121
    emit Transfer(sub_0a9bf121, msg.sender, this.address);
    require ext_code.size(randomGeneratorAddress)
    call randomGeneratorAddress.getRandomNumber() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] % 100 < 80:
        if sub_00b20a73 < 630:
            if sub_00b20a73 == -1:
                revert with 0, 17
            sub_00b20a73++
            if sub_5256421a > -2:
                revert with 0, 17
            sub_5256421a++
            if sub_5cd3c5f4[msg.sender] > -2:
                revert with 0, 17
            sub_5cd3c5f4[msg.sender]++
            require ext_code.size(sub_9e19916dAddress)
            call sub_9e19916dAddress.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, msg.sender, sub_71960654[stor1626]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Buy(sub_71960654[stor1626], msg.sender);
        else:
            if sub_1c651eb5 >= 10:
                revert with 0, 50
            if sub_1c651eb5 == -1:
                revert with 0, 17
            sub_1c651eb5++
            if sub_5256421a > -2:
                revert with 0, 17
            sub_5256421a++
            if sub_5cd3c5f4[msg.sender] > -2:
                revert with 0, 17
            sub_5cd3c5f4[msg.sender]++
            require ext_code.size(sub_9e19916dAddress)
            call sub_9e19916dAddress.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, msg.sender, sub_be4c2d04[stor1625]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Buy(sub_be4c2d04[stor1625], msg.sender);
    else:
        if sub_1c651eb5 < 10:
            if sub_1c651eb5 == -1:
                revert with 0, 17
            sub_1c651eb5++
            if sub_5256421a > -2:
                revert with 0, 17
            sub_5256421a++
            if sub_5cd3c5f4[msg.sender] > -2:
                revert with 0, 17
            sub_5cd3c5f4[msg.sender]++
            require ext_code.size(sub_9e19916dAddress)
            call sub_9e19916dAddress.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, msg.sender, sub_be4c2d04[stor1625]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Buy(sub_be4c2d04[stor1625], msg.sender);
        else:
            if sub_00b20a73 >= 630:
                revert with 0, 50
            if sub_00b20a73 == -1:
                revert with 0, 17
            sub_00b20a73++
            if sub_5256421a > -2:
                revert with 0, 17
            sub_5256421a++
            if sub_5cd3c5f4[msg.sender] > -2:
                revert with 0, 17
            sub_5cd3c5f4[msg.sender]++
            require ext_code.size(sub_9e19916dAddress)
            call sub_9e19916dAddress.0x23b872dd with:
                 gas gas_remaining wei
                args this.address, msg.sender, sub_71960654[stor1626]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Buy(sub_71960654[stor1626], msg.sender);
    stor7 = 1
}

function buy() payable {
    if stor7 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor7 = 2
    if stor8:
        revert with 0, 'Pausable: paused'
    if tx.origin != msg.sender:
        revert with 0, 'ONLY NON CONTRACT CALL'
    if sub_39f9c82c >= 5000:
        revert with 0, 'OUT OF MIXED CRAB'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < price:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= price
    if balanceOf[this.address] > !price:
        revert with 0, 17
    balanceOf[this.address] += price
    emit Transfer(price, msg.sender, this.address);
    require ext_code.size(randomGeneratorAddress)
    call randomGeneratorAddress.getRandomNumber() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_39f9c82c > -2:
        revert with 0, 17
    sub_39f9c82c++
    if sub_cc79221d[msg.sender] > -2:
        revert with 0, 17
    sub_cc79221d[msg.sender]++
    if ext_call.return_data[0] % 20 >= 20:
        revert with 0, 50
    if sub_bc735818[ext_call.return_data[0] % 20] < 250:
        if ext_call.return_data[0] % 20 >= 20:
            revert with 0, 50
        if sub_bc735818[ext_call.return_data[0] % 20] >= 250:
            revert with 0, 50
        if 1 > !sub_bc735818[ext_call.return_data[0] % 20]:
            revert with 0, 17
        if ext_call.return_data[0] % 20 >= 20:
            revert with 0, 50
        sub_bc735818[ext_call.return_data[0] % 20]++
        require ext_code.size(sub_9e19916dAddress)
        call sub_9e19916dAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, stor[stor1391[ext_call.return_data[0] % 20] + (250 * ext_call.return_data[0] % 20) + 9]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Buy(stor[stor1391[ext_call.return_data[0] % 20] + (250 * ext_call.return_data[0] % 20) + 9], msg.sender);
    else:
        if 1 > !var45002:
            revert with 0, 17
        if var49001 >= 20:
            s = var49002
            idx = var49001
            while idx < 20:
                if sub_bc735818[var54001] >= 250:
                    s = sub_bc735818[var54001]
                    idx = var54004
                    while 1 <= !idx:
                        if idx + 1 >= 20:
                            s = s
                            idx = idx + 1
                            continue 
                        if stor1392[idx] >= 250:
                            s = stor1392[idx]
                            idx = idx + 1
                            continue 
                        if idx + 1 >= 20:
                            revert with 0, 50
                        if stor1392[idx] >= 250:
                            revert with 0, 50
                        if 1 > !stor1392[idx]:
                            revert with 0, 17
                        if idx + 1 >= 20:
                            revert with 0, 50
                        stor1392[idx]++
                        require ext_code.size(sub_9e19916dAddress)
                        call sub_9e19916dAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args this.address, msg.sender, stor[stor1392[idx] + (250 * idx) + 259]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Buy(stor[stor1392[idx] + (250 * idx) + 259], msg.sender);
                        if sub_2de1214b:
                            if sub_cc79221d[address(msg.sender)] > !sub_5cd3c5f4[address(msg.sender)]:
                                revert with 0, 17
                            if sub_cc79221d[address(msg.sender)] + sub_5cd3c5f4[address(msg.sender)] > sub_2de1214b:
                                revert with 0, 'MAX CRAB'
                        stor7 = 1
                    revert with 0, 17
                if var54004 >= 20:
                    revert with 0, 50
                if sub_bc735818[var54001] >= 250:
                    revert with 0, 50
                if 1 > !sub_bc735818[var54001]:
                    revert with 0, 17
                if var54004 >= 20:
                    revert with 0, 50
                sub_bc735818[var54004] = sub_bc735818[var54001] + 1
                require ext_code.size(sub_9e19916dAddress)
                call sub_9e19916dAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args this.address, msg.sender, stor[stor1391[var54001] + (250 * var54004) + 9]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Buy(stor[stor1391[var54001] + (250 * var54004) + 9], msg.sender);
                if sub_2de1214b:
                    if sub_cc79221d[address(msg.sender)] > !sub_5cd3c5f4[address(msg.sender)]:
                        revert with 0, 17
                    if sub_cc79221d[address(msg.sender)] + sub_5cd3c5f4[address(msg.sender)] > sub_2de1214b:
                        revert with 0, 'MAX CRAB'
                stor7 = 1
            revert with 0, 50
        if var51002 >= 20:
            revert with 0, 50
        if sub_bc735818[var53001] >= 250:
            s = sub_bc735818[var53001]
            idx = var53004
            while 1 <= !idx:
                if idx + 1 >= 20:
                    if sub_bc735818.length >= 250:
                        s = sub_bc735818.length
                        idx = 0
                        continue 
                    if sub_bc735818.length >= 250:
                        revert with 0, 50
                    if 1 > !sub_bc735818.length:
                        revert with 0, 17
                    sub_bc735818.length++
                    require ext_code.size(sub_9e19916dAddress)
                    call sub_9e19916dAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args this.address, msg.sender, stor9[stor1391.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Buy(stor9[stor1391.length], msg.sender);
                else:
                    if stor1392[idx] >= 250:
                        s = stor1392[idx]
                        idx = idx + 1
                        continue 
                    if idx + 1 >= 20:
                        revert with 0, 50
                    if stor1392[idx] >= 250:
                        revert with 0, 50
                    if 1 > !stor1392[idx]:
                        revert with 0, 17
                    if idx + 1 >= 20:
                        revert with 0, 50
                    stor1392[idx]++
                    require ext_code.size(sub_9e19916dAddress)
                    call sub_9e19916dAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args this.address, msg.sender, stor[stor1392[idx] + (250 * idx) + 259]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Buy(stor[stor1392[idx] + (250 * idx) + 259], msg.sender);
                if sub_2de1214b:
                    if sub_cc79221d[address(msg.sender)] > !sub_5cd3c5f4[address(msg.sender)]:
                        revert with 0, 17
                    if sub_cc79221d[address(msg.sender)] + sub_5cd3c5f4[address(msg.sender)] > sub_2de1214b:
                        revert with 0, 'MAX CRAB'
                stor7 = 1
            revert with 0, 17
        if var53004 >= 20:
            revert with 0, 50
        if sub_bc735818[var53001] >= 250:
            revert with 0, 50
        if 1 > !sub_bc735818[var53001]:
            revert with 0, 17
        if var53004 >= 20:
            revert with 0, 50
        sub_bc735818[var53004] = sub_bc735818[var53001] + 1
        require ext_code.size(sub_9e19916dAddress)
        call sub_9e19916dAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, stor[stor1391[var53001] + (250 * var53004) + 9]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Buy(stor[stor1391[var53001] + (250 * var53004) + 9], msg.sender);
    if sub_2de1214b:
        if sub_cc79221d[address(msg.sender)] > !sub_5cd3c5f4[address(msg.sender)]:
            revert with 0, 17
        if sub_cc79221d[address(msg.sender)] + sub_5cd3c5f4[address(msg.sender)] > sub_2de1214b:
            revert with 0, 'MAX CRAB'
    stor7 = 1
}



}
