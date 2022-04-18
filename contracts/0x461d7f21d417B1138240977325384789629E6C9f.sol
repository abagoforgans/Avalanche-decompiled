contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of address royaltyOwner;
mapping of uint256 fee;
mapping of uint8 stor8;
array of struct stor9;
address proxyRegistryAddress;
address minterAddress;
uint256 stor12;
uint256 stor13;
array of struct stor14;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function royaltyOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return royaltyOwner[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function proxyRegistryAddress() payable {
    return proxyRegistryAddress
}

function getMinter() payable {
    return minterAddress
}

function getFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return fee[arg1]
}

function _fallback() payable {
    revert
}

function _totalSupply() payable {
    if stor13 < 1:
        revert with 0, 17
    return (stor13 - 1)
}

function relinquishControl() payable {
    if bool(stor8[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor8[msg.sender] = 0
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor8[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    minterAddress = arg1
}

function setFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if royaltyOwner[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can modify the royalty fees'
    if not arg1:
        revert with 0, 'Fee cannot be zero'
    fee[arg1] = arg2
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor8[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor8[address(arg1)] = 1
}

function setProxyRegistryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor8[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    proxyRegistryAddress = arg1
}

function transferOwnership(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if bool(stor8[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    revert with 0, 'Ownership transfer disallowed'
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sale price must be greater than 0'
    if arg1 <= 0:
        revert with 0, 'Token Id must be valid'
    if fee[arg1] / 10^6 and arg2 > -1 / fee[arg1] / 10^6:
        revert with 0, 17
    return royaltyOwner[arg1], fee[arg1] / 10^6 * arg2
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if '*U Z' == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if minterAddress != msg.sender:
        if not stor8[address(msg.sender)]:
            revert with 0, 'Only the minter can mint tokens'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
}

function allTokenHashes() payable {
    if stor14.length:
        mem[128] = uint256(stor14.field_0)
        idx = 128
        s = 0
        while (32 * stor14.length) + 96 > idx:
            mem[idx + 32] = stor14[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor14.length, data=mem[128 len 32 * stor14.length])
    mem[(32 * stor14.length) + 128] = 32
    mem[(32 * stor14.length) + 160] = stor14.length
    mem[(32 * stor14.length) + 192 len 32 * stor14.length] = mem[128 len 32 * stor14.length]
    return memory
      from (32 * stor14.length) + 128
       len (96 * stor14.length) + 64
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not proxyRegistryAddress:
        return bool(stor5[address(arg1)][address(arg2)])
    require ext_code.size(proxyRegistryAddress)
    staticcall proxyRegistryAddress.proxies(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != arg2:
        return bool(stor5[address(arg1)][address(arg2)])
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if minterAddress != msg.sender:
        if not stor8[address(msg.sender)]:
            revert with 0, 'Only the minter can mint tokens'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
}

function mint(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if minterAddress != msg.sender:
        if not stor8[address(msg.sender)]:
            revert with 0, 'Only the minter can mint tokens'
    if stor13 < 1:
        revert with 0, 17
    if stor13 - 1 > stor12:
        revert with 0, 'Minting max reached'
    royaltyOwner[arg2] = arg3
    stor14.length++
    stor14[stor14.length].field_0 = arg2
    if stor13 == -1:
        revert with 0, 17
    stor13++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
}

function setBaseTokenURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if bool(stor8[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0, 'Controllable: caller is not a controller'
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor9[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor9.length = 0
            idx = 0
            while stor9.length.field_1 + 31 / 32 > idx:
                stor9[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_b1516831(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 128 < 96 or (32 * ('cd', 36).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    mem[64] = (64 * ('cd', 36).length) + 160
    if ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        if not ownerOf[mem[(32 * idx) + 128]]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = ownerOf[mem[(32 * idx) + 128]] == address(cd[4])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 36).length) + 160] = 32
    mem[(64 * ('cd', 36).length) + 192] = ('cd', 36).length
    idx = 0
    s = mem[64] + 64
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 36).length:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (98 * ('cd', 36).length) + -mem[64] + 224
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if msg.sender == ownerOf[arg2]:
        approved[arg2] = arg1
        if not ownerOf[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    else:
        if not proxyRegistryAddress:
            if not stor5[stor2[arg2]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ERC721: approve caller is not owner nor approved for all'
            approved[arg2] = arg1
            if not ownerOf[arg2]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            require ext_code.size(proxyRegistryAddress)
            staticcall proxyRegistryAddress.proxies(address rg1) with:
                    gas gas_remaining wei
                   args ownerOf[arg2]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                if not stor5[stor2[arg2]][address(msg.sender)]:
                    revert with 0, 'ERC721: approve caller is not owner nor approved for all'
            approved[arg2] = arg1
            if not ownerOf[arg2]:
                revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg2'), ('name', 'ownerOf', 2))))
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() payable {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseTokenURI() payable {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[stor9.length.field_1 + ceil32(stor9.length.field_1) + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    else:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if not proxyRegistryAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            else:
                require ext_code.size(proxyRegistryAddress)
                staticcall proxyRegistryAddress.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 2))))
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg3], 0, arg3);
        if balanceOf[address(arg1)] < 1:
            revert with 0, 17
        balanceOf[address(arg1)]--
        if balanceOf[address(arg2)] > -2:
            revert with 0, 17
        balanceOf[address(arg2)]++
        ownerOf[arg3] = arg2
        emit Transfer(arg1, arg2, arg3);
        if not ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: approved query for nonexistent token'
    if approved[arg3] == msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg3], 0, arg3);
        if balanceOf[address(arg1)] < 1:
            revert with 0, 17
        balanceOf[address(arg1)]--
        if balanceOf[address(arg2)] > -2:
            revert with 0, 17
        balanceOf[address(arg2)]++
        ownerOf[arg3] = arg2
        emit Transfer(arg1, arg2, arg3);
        if not ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if not proxyRegistryAddress:
        if not stor5[stor2[arg3]][address(msg.sender)]:
            revert with 0, 'ERC721: transfer caller is not owner nor approved'
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg3], 0, arg3);
        if balanceOf[address(arg1)] < 1:
            revert with 0, 17
        balanceOf[address(arg1)]--
        if balanceOf[address(arg2)] > -2:
            revert with 0, 17
        balanceOf[address(arg2)]++
        ownerOf[arg3] = arg2
        emit Transfer(arg1, arg2, arg3);
        if not ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    require ext_code.size(proxyRegistryAddress)
    staticcall proxyRegistryAddress.proxies(address rg1) with:
            gas gas_remaining wei
           args ownerOf[arg3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not stor5[stor2[arg3]][address(msg.sender)]:
            revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if msg.sender == ownerOf[arg3]:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[arg3] != arg1:
            revert with 0, 'ERC721: transfer of token that is not own'
        if not arg2:
            revert with 0, 'ERC721: transfer to the zero address'
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        emit Approval(ownerOf[arg3], 0, arg3);
        if balanceOf[address(arg1)] < 1:
            revert with 0, 17
        balanceOf[address(arg1)]--
        if balanceOf[address(arg2)] > -2:
            revert with 0, 17
        balanceOf[address(arg2)]++
        ownerOf[arg3] = arg2
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if not return_data.size:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    else:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] == msg.sender:
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[arg3] != arg1:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not arg2:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[arg3], 0, arg3);
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            balanceOf[address(arg1)]--
            if balanceOf[address(arg2)] > -2:
                revert with 0, 17
            balanceOf[address(arg2)]++
            ownerOf[arg3] = arg2
            emit Transfer(arg1, arg2, arg3);
            if ext_code.size(arg2):
                require ext_code.size(arg2)
                call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                if not ext_call.success:
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not proxyRegistryAddress:
                if not stor5[stor2[arg3]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    require ext_code.size(arg2)
                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
                    if not ext_call.success:
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                require ext_code.size(proxyRegistryAddress)
                staticcall proxyRegistryAddress.proxies(address rg1) with:
                        gas gas_remaining wei
                       args ownerOf[arg3]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    if not stor5[stor2[arg3]][address(msg.sender)]:
                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[arg3] != arg1:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not arg2:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[arg3] = 0
                if not ownerOf[arg3]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[arg3], 0, arg3);
                if balanceOf[address(arg1)] < 1:
                    revert with 0, 17
                balanceOf[address(arg1)]--
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                ownerOf[arg3] = arg2
                emit Transfer(arg1, arg2, arg3);
                if ext_code.size(arg2):
                    require ext_code.size(arg2)
                    call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, 128, 0
                    if not ext_call.success:
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor9.length):
                mem[192] = Mask(248, 8, stor9.length)
            else:
                if bool(stor9.length) != 1:
                    mem[64] = 1
                    _119 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_119) > _119:
                        mem[_119 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_119) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < stor9.length.field_1:
                    mem[idx + 192] = stor9[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor9.length.field_1 + 192] = '0'
            mem[stor9.length.field_1 + 193] = 32
            mem[stor9.length.field_1 + 225] = mem[160]
            mem[stor9.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor9.length.field_1 + 257] = 0
            return Array(len=mem[160], data=mem[stor9.length.field_1 + 257 len ceil32(mem[160])])
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor9.length):
            mem[192] = Mask(248, 8, stor9.length)
        else:
            if bool(stor9.length) != 1:
                mem[64] = 1
                _123 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_123) > _123:
                    mem[_123 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_123) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor9.length.field_1:
                mem[idx + 192] = stor9[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor9.length.field_1 + 192] = '0'
        mem[stor9.length.field_1 + 193] = 32
        mem[stor9.length.field_1 + 225] = mem[160]
        mem[stor9.length.field_1 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor9.length.field_1 + 257] = 0
        return Array(len=mem[160], data=mem[stor9.length.field_1 + 257 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _356 = mem[64]
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 0, 34
            if not bool(stor9.length):
                mem[mem[64] + 32] = Mask(248, 8, stor9.length)
                _382 = mem[96]
                mem[mem[64] + stor9.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _588 = mem[64]
                    mem[64] = mem[96] + mem[64] + stor9.length.field_1 + 32
                    mem[mem[96] + _356 + stor9.length.field_1 + 32] = 32
                    _632 = mem[_588]
                    mem[_382 + _356 + stor9.length.field_1 + 64] = mem[_588]
                    mem[_382 + _356 + stor9.length.field_1 + 96 len ceil32(_632)] = mem[_588 + 32 len ceil32(_632)]
                    if ceil32(_632) > _632:
                        mem[_632 + _382 + _356 + stor9.length.field_1 + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_632) + _382 + _356 + stor9.length.field_1 + -mem[64] + 96
                mem[mem[96] + mem[64] + stor9.length.field_1 + 32] = 0
                _589 = mem[64]
                mem[64] = mem[96] + mem[64] + stor9.length.field_1 + 32
                mem[mem[96] + _356 + stor9.length.field_1 + 32] = 32
                _633 = mem[_589]
                mem[_382 + _356 + stor9.length.field_1 + 64] = mem[_589]
                mem[_382 + _356 + stor9.length.field_1 + 96 len ceil32(_633)] = mem[_589 + 32 len ceil32(_633)]
                if ceil32(_633) > _633:
                    mem[_633 + _382 + _356 + stor9.length.field_1 + 96] = 0
                return 32, mem[_382 + _356 + stor9.length.field_1 + 64 len ceil32(_633) + 32]
            if bool(stor9.length) != 1:
                _390 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_390) <= _390:
                    _590 = mem[64]
                    mem[64] = _390
                    mem[_390] = 32
                    _634 = mem[_590]
                    mem[_390 + 32] = mem[_590]
                    mem[_390 + 64 len ceil32(_634)] = mem[_590 + 32 len ceil32(_634)]
                    if ceil32(_634) > _634:
                        mem[_634 + _390 + 64] = 0
                    return 32, mem[_390 + 32 len ceil32(_634) + 32]
                mem[_390] = 0
                _591 = mem[64]
                mem[64] = _390
                mem[_390] = 32
                _635 = mem[_591]
                mem[_390 + 32] = mem[_591]
                mem[_390 + 64 len ceil32(_635)] = mem[_591 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_635 + _390 + 64] = 0
                return 32, mem[_390 + 32 len ceil32(_635) + 32]
            mem[0] = 9
            idx = 0
            s = 0
            while idx < stor9.length.field_1:
                mem[idx + _356 + 32] = stor9[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _584 = mem[96]
            mem[_356 + stor9.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_584) <= _584:
                _768 = mem[64]
                mem[64] = _584 + _356 + stor9.length.field_1 + 32
                mem[_584 + _356 + stor9.length.field_1 + 32] = 32
                _812 = mem[_768]
                mem[_584 + _356 + stor9.length.field_1 + 64] = mem[_768]
                mem[_584 + _356 + stor9.length.field_1 + 96 len ceil32(_812)] = mem[_768 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_812 + _584 + _356 + stor9.length.field_1 + 96] = 0
                return 32, mem[_584 + _356 + stor9.length.field_1 + 64 len ceil32(_812) + 32]
            mem[_584 + _356 + stor9.length.field_1 + 32] = 0
            _769 = mem[64]
            mem[64] = _584 + _356 + stor9.length.field_1 + 32
            mem[_584 + _356 + stor9.length.field_1 + 32] = 32
            _813 = mem[_769]
            mem[_584 + _356 + stor9.length.field_1 + 64] = mem[_769]
            mem[_584 + _356 + stor9.length.field_1 + 96 len ceil32(_813)] = mem[_769 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_813 + _584 + _356 + stor9.length.field_1 + 96] = 0
            return 32, mem[_584 + _356 + stor9.length.field_1 + 64 len ceil32(_813) + 32]
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor9.length):
            mem[mem[64] + 32] = Mask(248, 8, stor9.length)
            _391 = mem[96]
            mem[mem[64] + stor9.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _592 = mem[64]
                mem[64] = mem[96] + mem[64] + stor9.length.field_1 + 32
                mem[mem[96] + _356 + stor9.length.field_1 + 32] = 32
                _636 = mem[_592]
                mem[_391 + _356 + stor9.length.field_1 + 64] = mem[_592]
                mem[_391 + _356 + stor9.length.field_1 + 96 len ceil32(_636)] = mem[_592 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _391 + _356 + stor9.length.field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_636) + _391 + _356 + stor9.length.field_1 + -mem[64] + 96
            mem[mem[96] + mem[64] + stor9.length.field_1 + 32] = 0
            _593 = mem[64]
            mem[64] = mem[96] + mem[64] + stor9.length.field_1 + 32
            mem[mem[96] + _356 + stor9.length.field_1 + 32] = 32
            _637 = mem[_593]
            mem[_391 + _356 + stor9.length.field_1 + 64] = mem[_593]
            mem[_391 + _356 + stor9.length.field_1 + 96 len ceil32(_637)] = mem[_593 + 32 len ceil32(_637)]
            if ceil32(_637) > _637:
                mem[_637 + _391 + _356 + stor9.length.field_1 + 96] = 0
            return 32, mem[_391 + _356 + stor9.length.field_1 + 64 len ceil32(_637) + 32]
        if bool(stor9.length) != 1:
            _396 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_396) <= _396:
                _594 = mem[64]
                mem[64] = _396
                mem[_396] = 32
                _638 = mem[_594]
                mem[_396 + 32] = mem[_594]
                mem[_396 + 64 len ceil32(_638)] = mem[_594 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _396 + 64] = 0
                return 32, mem[_396 + 32 len ceil32(_638) + 32]
            mem[_396] = 0
            _595 = mem[64]
            mem[64] = _396
            mem[_396] = 32
            _639 = mem[_595]
            mem[_396 + 32] = mem[_595]
            mem[_396 + 64 len ceil32(_639)] = mem[_595 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_639 + _396 + 64] = 0
            return 32, mem[_396 + 32 len ceil32(_639) + 32]
        mem[0] = 9
        idx = 0
        s = 0
        while idx < stor9.length.field_1:
            mem[idx + _356 + 32] = stor9[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _585 = mem[96]
        mem[_356 + stor9.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_585) <= _585:
            _778 = mem[64]
            mem[64] = _585 + _356 + stor9.length.field_1 + 32
            mem[_585 + _356 + stor9.length.field_1 + 32] = 32
            _814 = mem[_778]
            mem[_585 + _356 + stor9.length.field_1 + 64] = mem[_778]
            mem[_585 + _356 + stor9.length.field_1 + 96 len ceil32(_814)] = mem[_778 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_814 + _585 + _356 + stor9.length.field_1 + 96] = 0
            return 32, mem[_585 + _356 + stor9.length.field_1 + 64 len ceil32(_814) + 32]
        mem[_585 + _356 + stor9.length.field_1 + 32] = 0
        _779 = mem[64]
        mem[64] = _585 + _356 + stor9.length.field_1 + 32
        mem[_585 + _356 + stor9.length.field_1 + 32] = 32
        _815 = mem[_779]
        mem[_585 + _356 + stor9.length.field_1 + 64] = mem[_779]
        mem[_585 + _356 + stor9.length.field_1 + 96 len ceil32(_815)] = mem[_779 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_815 + _585 + _356 + stor9.length.field_1 + 96] = 0
        return 32, mem[_585 + _356 + stor9.length.field_1 + 64 len ceil32(_815) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _357 = mem[64]
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor9.length):
            mem[mem[64] + 32] = Mask(248, 8, stor9.length)
            _384 = mem[96]
            mem[mem[64] + stor9.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _596 = mem[64]
                mem[64] = mem[96] + mem[64] + stor9.length.field_1 + 32
                mem[mem[96] + _357 + stor9.length.field_1 + 32] = 32
                _640 = mem[_596]
                mem[_384 + _357 + stor9.length.field_1 + 64] = mem[_596]
                mem[_384 + _357 + stor9.length.field_1 + 96 len ceil32(_640)] = mem[_596 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_640 + _384 + _357 + stor9.length.field_1 + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_640) + _384 + _357 + stor9.length.field_1 + -mem[64] + 96
            mem[mem[96] + mem[64] + stor9.length.field_1 + 32] = 0
            _597 = mem[64]
            mem[64] = mem[96] + mem[64] + stor9.length.field_1 + 32
            mem[mem[96] + _357 + stor9.length.field_1 + 32] = 32
            _641 = mem[_597]
            mem[_384 + _357 + stor9.length.field_1 + 64] = mem[_597]
            mem[_384 + _357 + stor9.length.field_1 + 96 len ceil32(_641)] = mem[_597 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_641 + _384 + _357 + stor9.length.field_1 + 96] = 0
            return 32, mem[_384 + _357 + stor9.length.field_1 + 64 len ceil32(_641) + 32]
        if bool(stor9.length) != 1:
            _393 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_393) <= _393:
                _598 = mem[64]
                mem[64] = _393
                mem[_393] = 32
                _642 = mem[_598]
                mem[_393 + 32] = mem[_598]
                mem[_393 + 64 len ceil32(_642)] = mem[_598 + 32 len ceil32(_642)]
                if ceil32(_642) > _642:
                    mem[_642 + _393 + 64] = 0
                return 32, mem[_393 + 32 len ceil32(_642) + 32]
            mem[_393] = 0
            _599 = mem[64]
            mem[64] = _393
            mem[_393] = 32
            _643 = mem[_599]
            mem[_393 + 32] = mem[_599]
            mem[_393 + 64 len ceil32(_643)] = mem[_599 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_643 + _393 + 64] = 0
            return 32, mem[_393 + 32 len ceil32(_643) + 32]
        mem[0] = 9
        idx = 0
        s = 0
        while idx < stor9.length.field_1:
            mem[idx + _357 + 32] = stor9[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _586 = mem[96]
        mem[_357 + stor9.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_586) <= _586:
            _788 = mem[64]
            mem[64] = _586 + _357 + stor9.length.field_1 + 32
            mem[_586 + _357 + stor9.length.field_1 + 32] = 32
            _816 = mem[_788]
            mem[_586 + _357 + stor9.length.field_1 + 64] = mem[_788]
            mem[_586 + _357 + stor9.length.field_1 + 96 len ceil32(_816)] = mem[_788 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _586 + _357 + stor9.length.field_1 + 96] = 0
            return 32, mem[_586 + _357 + stor9.length.field_1 + 64 len ceil32(_816) + 32]
        mem[_586 + _357 + stor9.length.field_1 + 32] = 0
        _789 = mem[64]
        mem[64] = _586 + _357 + stor9.length.field_1 + 32
        mem[_586 + _357 + stor9.length.field_1 + 32] = 32
        _817 = mem[_789]
        mem[_586 + _357 + stor9.length.field_1 + 64] = mem[_789]
        mem[_586 + _357 + stor9.length.field_1 + 96 len ceil32(_817)] = mem[_789 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_817 + _586 + _357 + stor9.length.field_1 + 96] = 0
        return 32, mem[_586 + _357 + stor9.length.field_1 + 64 len ceil32(_817) + 32]
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor9.length):
        mem[mem[64] + 32] = Mask(248, 8, stor9.length)
        _394 = mem[96]
        mem[mem[64] + stor9.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(mem[96]) <= mem[96]:
            _600 = mem[64]
            mem[64] = mem[96] + mem[64] + stor9.length.field_1 + 32
            mem[mem[96] + _357 + stor9.length.field_1 + 32] = 32
            _644 = mem[_600]
            mem[_394 + _357 + stor9.length.field_1 + 64] = mem[_600]
            mem[_394 + _357 + stor9.length.field_1 + 96 len ceil32(_644)] = mem[_600 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _394 + _357 + stor9.length.field_1 + 96] = 0
            return memory
              from mem[64]
               len ceil32(_644) + _394 + _357 + stor9.length.field_1 + -mem[64] + 96
        mem[mem[96] + mem[64] + stor9.length.field_1 + 32] = 0
        _601 = mem[64]
        mem[64] = mem[96] + mem[64] + stor9.length.field_1 + 32
        mem[mem[96] + _357 + stor9.length.field_1 + 32] = 32
        _645 = mem[_601]
        mem[_394 + _357 + stor9.length.field_1 + 64] = mem[_601]
        mem[_394 + _357 + stor9.length.field_1 + 96 len ceil32(_645)] = mem[_601 + 32 len ceil32(_645)]
        if ceil32(_645) > _645:
            mem[_645 + _394 + _357 + stor9.length.field_1 + 96] = 0
        return 32, mem[_394 + _357 + stor9.length.field_1 + 64 len ceil32(_645) + 32]
    if bool(stor9.length) != 1:
        _398 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_398) <= _398:
            _602 = mem[64]
            mem[64] = _398
            mem[_398] = 32
            _646 = mem[_602]
            mem[_398 + 32] = mem[_602]
            mem[_398 + 64 len ceil32(_646)] = mem[_602 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _398 + 64] = 0
            return 32, mem[_398 + 32 len ceil32(_646) + 32]
        mem[_398] = 0
        _603 = mem[64]
        mem[64] = _398
        mem[_398] = 32
        _647 = mem[_603]
        mem[_398 + 32] = mem[_603]
        mem[_398 + 64 len ceil32(_647)] = mem[_603 + 32 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_647 + _398 + 64] = 0
        return 32, mem[_398 + 32 len ceil32(_647) + 32]
    mem[0] = 9
    idx = 0
    s = 0
    while idx < stor9.length.field_1:
        mem[idx + _357 + 32] = stor9[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _587 = mem[96]
    mem[_357 + stor9.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_587) <= _587:
        _798 = mem[64]
        mem[64] = _587 + _357 + stor9.length.field_1 + 32
        mem[_587 + _357 + stor9.length.field_1 + 32] = 32
        _818 = mem[_798]
        mem[_587 + _357 + stor9.length.field_1 + 64] = mem[_798]
        mem[_587 + _357 + stor9.length.field_1 + 96 len ceil32(_818)] = mem[_798 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _587 + _357 + stor9.length.field_1 + 96] = 0
        return 32, mem[_587 + _357 + stor9.length.field_1 + 64 len ceil32(_818) + 32]
    mem[_587 + _357 + stor9.length.field_1 + 32] = 0
    _799 = mem[64]
    mem[64] = _587 + _357 + stor9.length.field_1 + 32
    mem[_587 + _357 + stor9.length.field_1 + 32] = 32
    _819 = mem[_799]
    mem[_587 + _357 + stor9.length.field_1 + 64] = mem[_799]
    mem[_587 + _357 + stor9.length.field_1 + 96 len ceil32(_819)] = mem[_799 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_819 + _587 + _357 + stor9.length.field_1 + 96] = 0
    return 32, mem[_587 + _357 + stor9.length.field_1 + 64 len ceil32(_819) + 32]
}



}
