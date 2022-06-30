contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const version = ''

const symbol = ''

const PERMIT_TYPEHASH = 0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511a


mapping of uint256 wards;
uint256 totalSupply;
uint256 dailyDAILimit;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 nonces;
mapping of uint256 lastMintRestart;
mapping of uint256 daiMintedToday;
uint256 DOMAIN_SEPARATOR;

function totalSupply() payable {
    return totalSupply
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
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

function daiMintedToday(address arg1) payable {
    require calldata.size - 4 >= 32
    return daiMintedToday[arg1]
}

function wards(address arg1) payable {
    require calldata.size - 4 >= 32
    return wards[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function dailyDAILimit() payable {
    return dailyDAILimit
}

function _fallback() payable {
    revert
}

function sub_16506eff(?) payable {
    require calldata.size - 4 >= 32
    if wards[msg.sender] != 1:
        revert with 0, 'eVirtualAsset/not-authorized'
    dailyDAILimit = arg1
}

function rely(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[msg.sender] != 1:
        revert with 0, 'eVirtualAsset/not-authorized'
    wards[address(arg1)] = 1
}

function deny(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[msg.sender] != 1:
        revert with 0, 'eVirtualAsset/not-authorized'
    wards[address(arg1)] = 0
}

function addAuth(address arg1) payable {
    require calldata.size - 4 >= 32
    if wards[msg.sender] != 1:
        revert with 0, 'eVirtualAsset/not-authorized'
    wards[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xef8c5be1: arg2, msg.sender, arg1
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if wards[msg.sender] != 1:
        revert with 0, 'mint not allow'
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit 0x65ddf252: arg2, 0, arg1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) payable {
    require calldata.size - 4 >= 256
    if not arg1:
        revert with 0, 'VirtualAsset/invalid-address-0'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511a, address(arg1), address(arg2), arg3, arg4, arg5)), arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'VirtualAsset/invalid-permit'
    if arg4:
        if block.timestamp > arg4:
            revert with 0, 'VirtualAsset/permit-expired'
    nonces[address(arg1)]++
    if arg3 != nonces[address(arg1)]:
        revert with 0, 'VirtualAsset/invalid-nonce'
    if arg5:
        allowance[address(arg1)][address(arg2)] = -1
        emit 0xef8c5be1: -1, arg1, arg2
    else:
        allowance[address(arg1)][address(arg2)] = 0
        emit 0xef8c5be1: 0, arg1, arg2
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe5669727475616c41737365742f696e73756666696369656e742d62616c616e63,
                    mem[197 len 31]
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xca5669727475616c41737365742f696e73756666696369656e742d616c6c6f77616e63,
                            mem[199 len 29]
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require totalSupply - arg2 <= totalSupply
    totalSupply -= arg2
    emit 0x65ddf252: arg2, arg1, 0
}

function move(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe5669727475616c41737365742f696e73756666696369656e742d62616c616e63,
                    mem[197 len 31]
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xca5669727475616c41737365742f696e73756666696369656e742d616c6c6f77616e63,
                            mem[199 len 29]
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit 0x65ddf252: arg3, arg1, arg2
}

function pull(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe5669727475616c41737365742f696e73756666696369656e742d62616c616e63,
                    mem[197 len 31]
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xca5669727475616c41737365742f696e73756666696369656e742d616c6c6f77616e63,
                            mem[199 len 29]
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[msg.sender] + arg2 >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + arg2
    emit 0x65ddf252: arg2, arg1, msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe5669727475616c41737365742f696e73756666696369656e742d62616c616e63,
                    mem[197 len 31]
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xca5669727475616c41737365742f696e73756666696369656e742d616c6c6f77616e63,
                            mem[199 len 29]
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][msg.sender] = allowance[address(arg1)][address(msg.sender)] - arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit 0x65ddf252: arg3, arg1, arg2
    return 1
}

function push(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe5669727475616c41737365742f696e73756666696369656e742d62616c616e63,
                    mem[197 len 31]
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xca5669727475616c41737365742f696e73756666696369656e742d616c6c6f77616e63,
                            mem[199 len 29]
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][msg.sender] = allowance[address(msg.sender)][address(msg.sender)] - arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit 0x65ddf252: arg2, msg.sender, arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe5669727475616c41737365742f696e73756666696369656e742d62616c616e63,
                    mem[197 len 31]
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xca5669727475616c41737365742f696e73756666696369656e742d616c6c6f77616e63,
                            mem[199 len 29]
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][msg.sender] = allowance[address(msg.sender)][address(msg.sender)] - arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit 0x65ddf252: arg2, msg.sender, arg1
    return 1
}



}
