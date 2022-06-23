contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint256 shares;
uint256 totalShares;
address tokenAddress;
uint256 nextProposalId;

function nextProposalId() payable {
    return nextProposalId
}

function totalShares() payable {
    return totalShares
}

function votes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(stor1[arg1][arg2])
}

function shares(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if shares[msg.sender] > !arg1:
        revert with 0, 17
    shares[msg.sender] += arg1
    if totalShares > !arg1:
        revert with 0, 17
    totalShares += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > shares[msg.sender]:
        revert with 0, 'Not enough shares'
    if shares[msg.sender] < arg1:
        revert with 0, 17
    shares[msg.sender] -= arg1
    if totalShares < arg1:
        revert with 0, 17
    totalShares -= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function proposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 0, 34
        if stor0[arg1].field_512:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 0, 34
            if stor0[arg1].field_513:
                if 31 >= stor0[arg1].field_513:
                    mem[128] = 256 * stor0[arg1].field_520
                else:
                    mem[128] = stor0[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 0, 34
            if stor0[arg1].field_513:
                if 31 >= stor0[arg1].field_513:
                    mem[128] = 256 * stor0[arg1].field_520
                else:
                    mem[128] = stor0[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor0[arg1].field_1536 >= 3:
            revert with 0, 33
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor0[arg1].field_513), data=mem[128 len ceil32(stor0[arg1].field_513)]),
               stor0[arg1].field_768,
               stor0[arg1].field_1024,
               stor0[arg1].field_1280,
               stor0[arg1].field_1536
    if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
        revert with 0, 34
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 0, 34
        if stor0[arg1].field_513:
            if 31 >= stor0[arg1].field_513:
                mem[128] = 256 * stor0[arg1].field_520
            else:
                mem[128] = stor0[arg1][2].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 0, 34
        if stor0[arg1].field_513:
            if 31 >= stor0[arg1].field_513:
                mem[128] = 256 * stor0[arg1].field_520
            else:
                mem[128] = stor0[arg1][2].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor0[arg1].field_1536 >= 3:
        revert with 0, 33
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1].field_512, data=mem[128 len ceil32(stor0[arg1].field_513)]),
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536
}



}
