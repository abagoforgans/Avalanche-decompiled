contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 nonce;
mapping of uint256 tokenSeed;
uint256 sub_e43852fc;

function getTokenSeed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: Only admins can call this'
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: Only admins can call this'
    if not tokenSeed[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: There is no seed for your tokenId yet'
    return tokenSeed[arg1]
}

function owner() payable {
    return owner
}

function getNonce() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return nonce
}

function sub_e43852fc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_e43852fc
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setNonce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nonce = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
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

function randomSeed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: Only admins can call this'
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: Only admins can call this'
    if not tokenSeed[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: There is no seed for your tokenId yet'
    return sha3(block.number, block.difficulty, arg1, tokenSeed[arg1], nonce)
}

function random(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: Only admins can call this'
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: Only admins can call this'
    if not tokenSeed[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Randomizer: There is no seed for your tokenId yet'
    return uint8(sha3(block.number, block.difficulty, arg1, tokenSeed[arg1], nonce) % 251)
}

function sub_2136f972(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx > !sub_e43852fc:
            revert with 0, 17
        mem[0] = idx + sub_e43852fc
        mem[32] = 3
        tokenSeed[idx + stor4] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_e43852fc > !('cd', 4).length:
        revert with 0, 17
    sub_e43852fc += ('cd', 4).length
}

function sub_218b56f6(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[36] > !var33002:
        revert with 0, 17
    if var37002 >= var37001:
    if var39002 >= ('cd', 4).length:
        revert with 0, 50
    tokenSeed[var41003] = mem[(32 * var41001) + 128]
    if var43001 == -1:
        revert with 0, 17
    if var49001 == -1:
        revert with 0, 17
    if cd[36] > !var57002:
        revert with 0, 17
    if var61002 >= var61001:
    if var63002 >= ('cd', 4).length:
        revert with 0, 50
    tokenSeed[var65003] = mem[(32 * var65001) + 128]
    # nil
}



}
