contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#  - tokenURI(uint256 arg1)
#
const getChainID = chainid


array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of struct stor151;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor202;
array of uint256 tokenByIndex;
mapping of uint256 stor204;
address owner;
uint256 stor351;
address sub_f0ba62d5Address;
address signerAddress;
mapping of struct memberships;
mapping of uint8 stor404;
mapping of uint8 stor405;
array of struct stor406;
uint256 stor407;
array of uint256 stor75901123276489147006081427704161463599957449291885703562554030577081909053179;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0c870326(?) payable {
    return stor406.length
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function memberships(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return memberships[arg1].field_0, memberships[arg1].field_256, memberships[arg1].field_512
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_608681dc(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor405[arg1])
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

function getSigner() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return signerAddress
}

function owner() payable {
    return owner
}

function sub_dd2965f4(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor404[arg1])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function sub_f0ba62d5(?) payable {
    return sub_f0ba62d5Address
}

function _fallback() payable {
    revert
}

function getEthSignedMessageHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    signerAddress = arg1
}

function sub_414bc99a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f0ba62d5Address = address(arg1)
}

function changePrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor406.length:
        revert with 0, 50
    stor406[arg1].field_256 = arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender - arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function recoverSigner(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not arg1 - ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function claim(uint256 arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    if not stor351 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor351 = 2
    mem[ceil32(ceil32(arg4.length)) + 97] = memberships[arg1].field_0
    mem[ceil32(ceil32(arg4.length)) + 129] = memberships[arg1].field_256
    mem[ceil32(ceil32(arg4.length)) + 161] = memberships[arg1].field_512
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'NEIBRMembership: Membership owner only'
    if not -memberships[arg1].field_256:
        revert with 0, 'NEIBRMembership: Memership doesn't exists'
    if arg2 > block.timestamp:
        revert with 0, 'NEIBRMembership: Can't claim for future.'
    if stor405[arg3]:
        revert with 0, 'NEIBRMembership: Signature already used.'
    if arg4.length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg3, arg2, msg.sender)), 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if signerAddress != address(signer):
        revert with 0, 'NEIBRMembership: Signature not verfied.'
    if arg2 / 24 * 3600 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 0, 17
    if 24 * 3600 * arg2 / 24 * 3600 < memberships[arg1].field_512:
        revert with 0, 17
    if stor406.length <= memberships[arg1].field_0:
        revert with 0, 'NEIBRMembership: The Membership type doesn't exists.'
    if memberships[arg1].field_0 >= stor406.length:
        revert with 0, 50
    if (24 * 3600 * arg2 / 24 * 3600) - memberships[arg1].field_512 / 24 * 3600 and stor406[stor403[arg1].field_0].field_512 > -1 / (24 * 3600 * arg2 / 24 * 3600) - memberships[arg1].field_512 / 24 * 3600:
        revert with 0, 17
    call sub_f0ba62d5Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (24 * 3600 * arg2 / 24 * 3600) - memberships[arg1].field_512 / 24 * 3600 * stor406[stor403[arg1].field_0].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    memberships[arg1].field_512 = 24 * 3600 * arg2 / 24 * 3600
    stor405[arg3] = 1
    emit RewardClaimed((24 * 3600 * arg2 / 24 * 3600) - memberships[arg1].field_512 / 24 * 3600 * stor406[stor403[arg1].field_0].field_512, 24 * 3600 * arg2 / 24 * 3600, block.timestamp, msg.sender, arg1);
    stor351 = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor104[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
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

function sub_9d9e9bcc(?) payable {
    require calldata.size - 4 >= 32
    if stor406.length <= arg1:
        revert with 0, 'NEIBRMembership: The Membership type doesn't exists.'
    if arg1 >= stor406.length:
        revert with 0, 50
    if bool(stor406[arg1].field_0):
        if not bool(stor406[arg1].field_0) - (uint255(stor406[arg1].field_0) * 0.5 < 32):
            revert with 0, 34
        if bool(stor406[arg1].field_0):
            if not bool(stor406[arg1].field_0) - (uint255(stor406[arg1].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor406[arg1].field_0):
                if 31 >= uint255(stor406[arg1].field_0) * 0.5:
                    mem[320] = 256 * Mask(248, 0, stor406[arg1].field_8)
                else:
                    mem[320] = stor406[arg1].field_0
                    idx = 320
                    s = 0
                    while (uint255(stor406[arg1].field_0) * 0.5) + 288 > idx:
                        mem[idx + 32] = stor406[(3 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not bool(stor406[arg1].field_0) - (stor406[arg1].field_1 % 128 < 32):
                revert with 0, 34
            if stor406[arg1].field_1 % 128:
                if 31 >= stor406[arg1].field_1 % 128:
                    mem[320] = 256 * Mask(248, 0, stor406[arg1].field_8)
                else:
                    mem[320] = stor406[arg1].field_0
                    idx = 320
                    s = 0
                    while stor406[arg1].field_1 % 128 + 288 > idx:
                        mem[idx + 32] = stor406[(3 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, 96, 
               stor406[arg1].field_256,
               stor406[arg1].field_512,
               2 * Mask(256, -1, stor406[arg1].field_0),
               mem[320 len ceil32(uint255(stor406[arg1].field_0) * 0.5)]
    if not bool(stor406[arg1].field_0) - (stor406[arg1].field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor406[arg1].field_0):
        if not bool(stor406[arg1].field_0) - (uint255(stor406[arg1].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor406[arg1].field_0):
            if 31 >= uint255(stor406[arg1].field_0) * 0.5:
                mem[320] = 256 * Mask(248, 0, stor406[arg1].field_8)
            else:
                mem[320] = stor406[arg1].field_0
                idx = 320
                s = 0
                while (uint255(stor406[arg1].field_0) * 0.5) + 288 > idx:
                    mem[idx + 32] = stor406[(3 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not bool(stor406[arg1].field_0) - (stor406[arg1].field_1 % 128 < 32):
            revert with 0, 34
        if stor406[arg1].field_1 % 128:
            if 31 >= stor406[arg1].field_1 % 128:
                mem[320] = 256 * Mask(248, 0, stor406[arg1].field_8)
            else:
                mem[320] = stor406[arg1].field_0
                idx = 320
                s = 0
                while stor406[arg1].field_1 % 128 + 288 > idx:
                    mem[idx + 32] = stor406[(3 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, 96, 
           stor406[arg1].field_256,
           stor406[arg1].field_512,
           stor406[arg1].field_0 % 128,
           mem[320 len ceil32(stor406[arg1].field_1 % 128)]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor104[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor204[arg3] = tokenByIndex.length
        tokenByIndex.length++
        storA7CE[stor203.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor202[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor202[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1]
                stor202[stor201[address(arg1)][stor104[address(arg1)] - 1]] = stor202[arg3]
            stor202[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor104[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor104[address(arg2)]] = arg3
            stor202[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[arg3]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[arg3]
        stor204[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
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
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not -arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() payable {
    if bool(stor101.length):
        if not bool(stor101.length) - (uint255(stor101.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor101.length):
            if not bool(stor101.length) - (uint255(stor101.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        else:
            if not bool(stor101.length) - (stor101.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor101.length.field_1 % 128:
                if 31 < stor101.length.field_1 % 128:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if not bool(stor101.length) - (stor101.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor101.length):
        if not bool(stor101.length) - (uint255(stor101.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    else:
        if not bool(stor101.length) - (stor101.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor101.length.field_1 % 128:
            if 31 < stor101.length.field_1 % 128:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    mem[ceil32(stor101.length.field_1 % 128) + 192 len ceil32(stor101.length.field_1 % 128)] = mem[128 len ceil32(stor101.length.field_1 % 128)]
    if ceil32(stor101.length.field_1 % 128) > stor101.length.field_1 % 128:
        mem[stor101.length.field_1 % 128 + ceil32(stor101.length.field_1 % 128) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)], mem[(2 * ceil32(stor101.length.field_1 % 128)) + 192 len 2 * ceil32(stor101.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if not bool(stor102.length) - (uint255(stor102.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor102.length):
            if not bool(stor102.length) - (uint255(stor102.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        else:
            if not bool(stor102.length) - (stor102.length.field_1 % 128 < 32):
                revert with 0, 34
            if stor102.length.field_1 % 128:
                if 31 < stor102.length.field_1 % 128:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if not bool(stor102.length) - (stor102.length.field_1 % 128 < 32):
        revert with 0, 34
    if bool(stor102.length):
        if not bool(stor102.length) - (uint255(stor102.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    else:
        if not bool(stor102.length) - (stor102.length.field_1 % 128 < 32):
            revert with 0, 34
        if stor102.length.field_1 % 128:
            if 31 < stor102.length.field_1 % 128:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    mem[ceil32(stor102.length.field_1 % 128) + 192 len ceil32(stor102.length.field_1 % 128)] = mem[128 len ceil32(stor102.length.field_1 % 128)]
    if ceil32(stor102.length.field_1 % 128) > stor102.length.field_1 % 128:
        mem[stor102.length.field_1 % 128 + ceil32(stor102.length.field_1 % 128) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)], mem[(2 * ceil32(stor102.length.field_1 % 128)) + 192 len 2 * ceil32(stor102.length.field_1 % 128)]), 
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor106[stor103[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor103[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor103[arg1]] - 1 != stor202[arg1]:
            tokenOfOwnerByIndex[stor103[arg1]][stor202[arg1]] = tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1]
            stor202[stor201[stor103[arg1]][stor104[stor103[arg1]] - 1]] = stor202[arg1]
        stor202[arg1] = 0
        tokenOfOwnerByIndex[stor103[arg1]][stor104[stor103[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor204[arg1] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor204[arg1]] = tokenByIndex[tokenByIndex.length]
    stor204[stor203[stor203.length]] = stor204[arg1]
    stor204[arg1] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor103[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if bool(stor151[arg1].field_0):
        if not bool(stor151[arg1].field_0) - (uint255(stor151[arg1].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor151[arg1].field_0):
            if bool(stor151[arg1].field_0):
                if not bool(stor151[arg1].field_0) - (uint255(stor151[arg1].field_0) * 0.5 < 32):
                    revert with 0, 34
                stor151[arg1].field_0 = 0
                if 31 < uint255(stor151[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor151[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor151[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if not bool(stor151[arg1].field_0) - (stor151[arg1].field_1 % 128 < 32):
                    revert with 0, 34
                stor151[arg1].field_0 = 0
                if 31 < stor151[arg1].field_1 % 128:
                    idx = 0
                    while stor151[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor151[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if not bool(stor151[arg1].field_0) - (stor151[arg1].field_1 % 128 < 32):
            revert with 0, 34
        if stor151[arg1].field_1 % 128:
            if bool(stor151[arg1].field_0):
                if not bool(stor151[arg1].field_0) - (uint255(stor151[arg1].field_0) * 0.5 < 32):
                    revert with 0, 34
                stor151[arg1].field_0 = 0
                if 31 < uint255(stor151[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor151[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor151[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if not bool(stor151[arg1].field_0) - (stor151[arg1].field_1 % 128 < 32):
                    revert with 0, 34
                stor151[arg1].field_0 = 0
                if 31 < stor151[arg1].field_1 % 128:
                    idx = 0
                    while stor151[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor151[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    memberships[arg1].field_0 = 0
    memberships[arg1].field_256 = 0
    memberships[arg1].field_512 = 0
}

function mint(uint256 arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg3.length)) + 97] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg3.length)) + 129 len arg4.length] = arg4[all]
    if not stor351 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor351 = 2
    if stor404[arg2]:
        revert with 0, 'NEIBRMembership: Signature already used.'
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 130] = address(this.address)
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 150] = arg1
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 182] = arg2
    mem[ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg4.length)) + 98] = arg3.length + 104
    if arg4.length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4.length) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 20, 0, msg.sender))), 0, mem[ceil32(ceil32(arg3.length)) + 129], mem[ceil32(ceil32(arg3.length)) + 161]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if signerAddress != address(signer):
        revert with 0, 'NEIBRMembership: Signature not verfied.'
    if stor406.length <= arg1:
        revert with 0, 'NEIBRMembership: The Membership type doesn't exists.'
    if arg1 >= stor406.length:
        revert with 0, 50
    staticcall sub_f0ba62d5Address.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor406[arg1].field_256:
        revert with 0, 'NEIBRMembership: Insufficient NEIBR allowance'
    if stor406.length <= arg1:
        revert with 0, 'NEIBRMembership: The Membership type doesn't exists.'
    if arg1 >= stor406.length:
        revert with 0, 50
    call sub_f0ba62d5Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor406[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor407]:
        revert with 0, 'ERC721: token already minted'
    stor204[stor407] = tokenByIndex.length
    tokenByIndex.length++
    storA7CE[stor203.length] = stor407
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor104[address(msg.sender)]] = stor407
            stor202[stor407] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor204[stor407] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor204[stor407]] = tokenByIndex[tokenByIndex.length]
        stor204[stor203[stor203.length]] = stor204[stor407]
        stor204[stor407] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor407] = msg.sender
    emit Transfer(0, msg.sender, stor407);
    if not ownerOf[stor407]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if bool(stor151[stor407].field_0):
        if not bool(stor151[stor407].field_0) - (uint255(stor151[stor407].field_0) * 0.5 < 32):
            revert with 0, 34
        if arg3.length:
            stor151[stor407][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor151[stor407].field_0 = 0
            idx = 0
            while (uint255(stor151[stor407].field_0) * 0.5) + 31 / 32 > idx:
                stor151[stor407][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor151[stor407].field_0) - (stor151[stor407].field_1 % 128 < 32):
            revert with 0, 34
        if arg3.length:
            stor151[stor407][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor151[stor407].field_0 = 0
            idx = 0
            while stor151[stor407].field_1 % 128 + 31 / 32 > idx:
                stor151[stor407][idx].field_0 = 0
                idx = idx + 1
                continue 
    if block.timestamp / 24 * 3600 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 0, 17
    memberships[stor407].field_0 = arg1
    memberships[stor407].field_256 = block.timestamp
    memberships[stor407].field_512 = 24 * 3600 * block.timestamp / 24 * 3600
    stor404[arg2] = 1
    if not stor407 + 1:
        revert with 0, 17
    stor407++
    stor351 = 1
}

function sub_7e1fb682(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor406.length:
        _115 = mem[64]
        _116 = mem[96]
        s = 0
        while s < _116:
            mem[s + _115 + 32] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_116) <= _116:
            _241 = mem[64]
            mem[mem[64]] = _116 + _115 - mem[64]
            mem[64] = _116 + _115 + 32
            _243 = sha3(mem[_241 + 32 len mem[_241]])
            if idx >= stor406.length:
                revert with 0, 50
            mem[0] = 406
            if bool(stor406[idx].field_0):
                if not bool(stor406[idx].field_0) - (uint255(stor406[idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor406[idx].field_0):
                    mem[_116 + _115 + 64] = Mask(248, 8, stor406[idx].field_0)
                    mem[_116 + _115 + 32] = uint255(stor406[idx].field_0) * 0.5
                    mem[64] = _116 + _115 + (uint255(stor406[idx].field_0) * 0.5) + 64
                    if not sha3(mem[_116 + _115 + 64 len uint255(stor406[idx].field_0) * 0.5]) - _243:
                        revert with 0, 'NEIBRMembership: Name already in use.'
                else:
                    if bool(stor406[idx].field_0) != 1:
                        mem[_116 + _115 + 32] = -_116 + -_115 - 64
                        mem[64] = 0
                        if not sha3(mem[_116 + _115 + 64 len -_116 + -_115 - 64]) - _243:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '',
                                        0,
                                        uint32('NEIBRMembership: Name already in'),
                                        0x207573652e000000000000000000000000000000000000000000000000000000
                    else:
                        mem[0] = (3 * idx) + sha3(406)
                        s = 0
                        t = sha3((3 * idx) + sha3(406))
                        while s < uint255(stor406[idx].field_0) * 0.5:
                            mem[s + _116 + _115 + 64] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _331 = mem[64]
                        mem[mem[64]] = _116 + _115 + (uint255(stor406[idx].field_0) * 0.5) + -mem[64] + 32
                        mem[64] = _116 + _115 + (uint255(stor406[idx].field_0) * 0.5) + 64
                        if not sha3(mem[_331 + 32 len mem[_331]]) - _243:
                            revert with 0, 'NEIBRMembership: Name already in use.'
            else:
                if not bool(stor406[idx].field_0) - (stor406[idx].field_1 % 128 < 32):
                    revert with 0, 34
                if not bool(stor406[idx].field_0):
                    mem[_116 + _115 + 64] = Mask(248, 8, stor406[idx].field_0)
                    mem[_116 + _115 + 32] = stor406[idx].field_1 % 128
                    mem[64] = _116 + _115 + stor406[idx].field_1 % 128 + 64
                    if not sha3(mem[_116 + _115 + 64 len stor406[idx].field_1 % 128]) - _243:
                        revert with 0, 'NEIBRMembership: Name already in use.'
                else:
                    if bool(stor406[idx].field_0) != 1:
                        mem[_116 + _115 + 32] = -_116 + -_115 - 64
                        mem[64] = 0
                        if not sha3(mem[_116 + _115 + 64 len -_116 + -_115 - 64]) - _243:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '',
                                        0,
                                        uint32('NEIBRMembership: Name already in'),
                                        0x207573652e000000000000000000000000000000000000000000000000000000
                    else:
                        mem[0] = (3 * idx) + sha3(406)
                        s = 0
                        t = sha3((3 * idx) + sha3(406))
                        while s < stor406[idx].field_1 % 128:
                            mem[s + _116 + _115 + 64] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _334 = mem[64]
                        mem[mem[64]] = _116 + _115 + stor406[idx].field_1 % 128 + -mem[64] + 32
                        mem[64] = _116 + _115 + stor406[idx].field_1 % 128 + 64
                        if not sha3(mem[_334 + 32 len mem[_334]]) - _243:
                            revert with 0, 'NEIBRMembership: Name already in use.'
        else:
            mem[_116 + _115 + 32] = 0
            _244 = mem[64]
            mem[mem[64]] = _116 + _115 - mem[64]
            mem[64] = _116 + _115 + 32
            _246 = sha3(mem[_244 + 32 len mem[_244]])
            if idx >= stor406.length:
                revert with 0, 50
            mem[0] = 406
            if bool(stor406[idx].field_0):
                if not bool(stor406[idx].field_0) - (uint255(stor406[idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor406[idx].field_0):
                    mem[_116 + _115 + 64] = Mask(248, 8, stor406[idx].field_0)
                    mem[_116 + _115 + 32] = uint255(stor406[idx].field_0) * 0.5
                    mem[64] = _116 + _115 + (uint255(stor406[idx].field_0) * 0.5) + 64
                    if not sha3(mem[_116 + _115 + 64 len uint255(stor406[idx].field_0) * 0.5]) - _246:
                        revert with 0, 'NEIBRMembership: Name already in use.'
                else:
                    if bool(stor406[idx].field_0) != 1:
                        mem[_116 + _115 + 32] = -_116 + -_115 - 64
                        mem[64] = 0
                        if not sha3(mem[_116 + _115 + 64 len -_116 + -_115 - 64]) - _246:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '',
                                        0,
                                        uint32('NEIBRMembership: Name already in'),
                                        0x207573652e000000000000000000000000000000000000000000000000000000
                    else:
                        mem[0] = (3 * idx) + sha3(406)
                        s = 0
                        t = sha3((3 * idx) + sha3(406))
                        while s < uint255(stor406[idx].field_0) * 0.5:
                            mem[s + _116 + _115 + 64] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _337 = mem[64]
                        mem[mem[64]] = _116 + _115 + (uint255(stor406[idx].field_0) * 0.5) + -mem[64] + 32
                        mem[64] = _116 + _115 + (uint255(stor406[idx].field_0) * 0.5) + 64
                        if not sha3(mem[_337 + 32 len mem[_337]]) - _246:
                            revert with 0, 'NEIBRMembership: Name already in use.'
            else:
                if not bool(stor406[idx].field_0) - (stor406[idx].field_1 % 128 < 32):
                    revert with 0, 34
                if not bool(stor406[idx].field_0):
                    mem[_116 + _115 + 64] = Mask(248, 8, stor406[idx].field_0)
                    mem[_116 + _115 + 32] = stor406[idx].field_1 % 128
                    mem[64] = _116 + _115 + stor406[idx].field_1 % 128 + 64
                    if not sha3(mem[_116 + _115 + 64 len stor406[idx].field_1 % 128]) - _246:
                        revert with 0, 'NEIBRMembership: Name already in use.'
                else:
                    if bool(stor406[idx].field_0) != 1:
                        mem[_116 + _115 + 32] = -_116 + -_115 - 64
                        mem[64] = 0
                        if not sha3(mem[_116 + _115 + 64 len -_116 + -_115 - 64]) - _246:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '',
                                        0,
                                        uint32('NEIBRMembership: Name already in'),
                                        0x207573652e000000000000000000000000000000000000000000000000000000
                    else:
                        mem[0] = (3 * idx) + sha3(406)
                        s = 0
                        t = sha3((3 * idx) + sha3(406))
                        while s < stor406[idx].field_1 % 128:
                            mem[s + _116 + _115 + 64] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _340 = mem[64]
                        mem[mem[64]] = _116 + _115 + stor406[idx].field_1 % 128 + -mem[64] + 32
                        mem[64] = _116 + _115 + stor406[idx].field_1 % 128 + 64
                        if not sha3(mem[_340 + 32 len mem[_340]]) - _246:
                            revert with 0, 'NEIBRMembership: Name already in use.'
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _117 = mem[64]
    mem[64] = mem[64] + 96
    mem[_117] = 96
    mem[_117 + 32] = arg2
    mem[_117 + 64] = arg3
    stor406.length++
    if bool(stor406[stor406.length].field_0):
        if not bool(stor406[stor406.length].field_0) - (uint255(stor406[stor406.length].field_0) * 0.5 < 32):
            revert with 0, 34
        if mem[96]:
            stor406[stor406.length][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor406[stor406.length].field_0 = 0
            idx = 0
            while (uint255(stor406[stor406.length].field_0) * 0.5) + 31 / 32 > idx:
                stor406[(3 * stor406.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor406[stor406.length].field_0) - (stor406[stor406.length].field_1 % 128 < 32):
            revert with 0, 34
        if mem[96]:
            stor406[stor406.length][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor406[stor406.length].field_0 = 0
            idx = 0
            while stor406[stor406.length].field_1 % 128 + 31 / 32 > idx:
                stor406[(3 * stor406.length) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor406[stor406.length].field_256 = arg2
    stor406[stor406.length].field_512 = arg3
    if stor406.length < 1:
        revert with 0, 17
    emit 0xaaea5d9d: stor406.length - 1, msg.sender
}



}
