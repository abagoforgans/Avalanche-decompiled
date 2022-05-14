contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const version = ''

const symbol = ''

const PERMIT_TYPEHASH = 0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb


mapping of uint256 wards;
uint256 totalSupply;
uint256 sub_67a3010d;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 nonces;
mapping of uint256 lastMintRestart;
mapping of uint256 sub_bc662db4;
uint256 DOMAIN_SEPARATOR;

function totalSupply() payable {
    return totalSupply
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_67a3010d(?) payable {
    return sub_67a3010d
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

function sub_bc662db4(?) payable {
    require calldata.size - 4 >= 32
    return sub_bc662db4[arg1]
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

function sub_2de17921(?) payable {
    require calldata.size - 4 >= 64
    emit 0xfeddf252: arg2, 0, arg1
}

function sub_db2817cc(?) payable {
    require calldata.size - 4 >= 32
    if wards[msg.sender] != 1:
        revert with 0, 'Seed/not-authorized'
    sub_67a3010d = arg1
}

function rely(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[msg.sender] != 1:
        revert with 0, 'Seed/not-authorized'
    wards[address(arg1)] = 1
}

function deny(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[msg.sender] != 1:
        revert with 0, 'Seed/not-authorized'
    wards[address(arg1)] = 0
}

function addAuth(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[msg.sender] != 1:
        revert with 0, 'Seed/not-authorized'
    wards[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'Seed/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0, 'Seed/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require totalSupply - arg2 <= totalSupply
    totalSupply -= arg2
    emit 0xfeddf252: arg2, arg1, 0
}

function move(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Seed/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'Seed/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit 0xfeddf252: arg3, arg1, arg2
}

function pull(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'Seed/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0, 'Seed/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[msg.sender] + arg2 >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + arg2
    emit 0xfeddf252: arg2, arg1, msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'Seed/insufficient-balance'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'Seed/insufficient-allowance'
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function push(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Seed/insufficient-balance'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'Seed/insufficient-allowance'
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][msg.sender] = allowance[address(msg.sender)][address(msg.sender)] - arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit 0xfeddf252: arg2, msg.sender, arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'Seed/insufficient-balance'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'Seed/insufficient-allowance'
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][msg.sender] = allowance[address(msg.sender)][address(msg.sender)] - arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) payable {
    require calldata.size - 4 >= 256
    if not arg1:
        revert with 0, 'Seed/invalid-address-0'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb, address(arg1), address(arg2), arg3, arg4, arg5)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Seed/invalid-permit'
    if arg4:
        if block.timestamp > arg4:
            revert with 0, 'Seed/permit-expired'
    nonces[address(arg1)]++
    if arg3 != nonces[address(arg1)]:
        revert with 0, 'Seed/invalid-nonce'
    if arg5:
        allowance[address(arg1)][address(arg2)] = -1
        emit Approval(-1, arg1, arg2);
    else:
        allowance[address(arg1)][address(arg2)] = 0
        emit Approval(0, arg1, arg2);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not wards[msg.sender]:
        require arg2 + sub_bc662db4[msg.sender] >= arg2
        require block.number - lastMintRestart[msg.sender] <= block.number
        if arg2 + sub_bc662db4[msg.sender] > sub_67a3010d:
            if block.number - lastMintRestart[msg.sender] < 6500:
                revert with 0, 'Over daily SEED Limit'
            if arg2 > sub_67a3010d:
                revert with 0, 'Over daily SEED Limit'
        if block.number - lastMintRestart[msg.sender] < 6500:
            require sub_bc662db4[msg.sender] + arg2 >= sub_bc662db4[msg.sender]
            sub_bc662db4[msg.sender] += arg2
        else:
            sub_bc662db4[msg.sender] = arg2
            lastMintRestart[msg.sender] = block.number
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit 0xfeddf252: arg2, 0, arg1
}



}
