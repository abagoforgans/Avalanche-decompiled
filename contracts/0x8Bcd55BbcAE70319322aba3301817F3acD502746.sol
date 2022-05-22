contract main {




// =====================  Runtime code  =====================


const name = 'Dai Stablecoin'

const decimals = 18

const version = '1'

const symbol = 'HELMET'

const PERMIT_TYPEHASH = 0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb


mapping of uint256 wards;
uint256 totalSupply;
uint256 sub_a26a7763;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 nonces;
mapping of uint256 lastMintRestart;
mapping of uint256 sub_4181d7d8;
uint256 DOMAIN_SEPARATOR;

function totalSupply() payable {
    return totalSupply
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_4181d7d8(?) payable {
    require calldata.size - 4 >= 32
    return sub_4181d7d8[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function lastMintRestart(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastMintRestart[arg1]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function sub_a26a7763(?) payable {
    return sub_a26a7763
}

function wards(address arg1) payable {
    require calldata.size - 4 >= 32
    return wards[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_20b17174(?) payable {
    require calldata.size - 4 >= 32
    if wards[address(msg.sender)] != 1:
        revert with 0, 'Dai/not-authorized'
    sub_a26a7763 = arg1
}

function rely(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[address(msg.sender)] != 1:
        revert with 0, 'Dai/not-authorized'
    wards[address(arg1)] = 1
}

function deny(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[address(msg.sender)] != 1:
        revert with 0, 'Dai/not-authorized'
    wards[address(arg1)] = 0
}

function addAuth(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[address(msg.sender)] != 1:
        revert with 0, 'Dai/not-authorized'
    wards[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Dai/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0, 'Dai/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require totalSupply - arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function move(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Dai/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'Dai/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function pull(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Dai/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0, 'Dai/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'Dai/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'Dai/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function push(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Dai/insufficient-balance'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'Dai/insufficient-allowance'
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'Dai/insufficient-balance'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'Dai/insufficient-allowance'
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) payable {
    require calldata.size - 4 >= 256
    if not arg1:
        revert with 0, 'Dai/invalid-address-0'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb, address(arg1), address(arg2), arg3, arg4, arg5)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Dai/invalid-permit'
    if arg4:
        if block.timestamp > arg4:
            revert with 0, 'Dai/permit-expired'
    nonces[address(arg1)]++
    if arg3 != nonces[address(arg1)]:
        revert with 0, 'Dai/invalid-nonce'
    if arg5:
        allowance[address(arg1)][address(arg2)] = -1
        emit Approval(-1, arg1, arg2);
    else:
        allowance[address(arg1)][address(arg2)] = 0
        emit Approval(0, arg1, arg2);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not wards[address(msg.sender)]:
        require arg2 + sub_4181d7d8[address(msg.sender)] >= arg2
        require block.number - lastMintRestart[address(msg.sender)] <= block.number
        if arg2 + sub_4181d7d8[address(msg.sender)] > sub_a26a7763:
            if block.number - lastMintRestart[address(msg.sender)] < 6500:
                revert with 0, 'Over daily HELMET Limit'
            if arg2 > sub_a26a7763:
                revert with 0, 'Over daily HELMET Limit'
        if block.number - lastMintRestart[address(msg.sender)] < 6500:
            require sub_4181d7d8[address(msg.sender)] + arg2 >= sub_4181d7d8[address(msg.sender)]
            sub_4181d7d8[address(msg.sender)] += arg2
        else:
            sub_4181d7d8[address(msg.sender)] = arg2
            lastMintRestart[address(msg.sender)] = block.number
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}



}
