contract main {




// =====================  Runtime code  =====================


#
#  - sub_8ac54b0d(?)
#
const DECIMAL_PRECISION = 10^18

const NAME = 'HintHelpers'


address stor0;
address stor50;
address stor51;
address owner;
address stor101;
address stor102;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    stor101 = arg1
    stor102 = arg2
    stor0 = arg3
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getEntireSystemColl() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x651340c4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEntireSystemDebt() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    return (2 * ext_call.return_data[0])
}

function getApproxHint(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor102)
    staticcall stor102.getTroveOwnersCount() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0, 0, arg3
    require ext_code.size(stor101)
    staticcall stor101.getLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor101)
    staticcall stor101.0x5189b08f with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = 160
    mem[96] = 12
    mem[128] = 'sub overflow'
    if arg1 >= ext_call.return_data[0]:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'sub overflow'
        idx = 1
        s = arg3
        t = arg1 - ext_call.return_data[0]
        u = ext_call.return_data[0]
        while idx < arg2:
            _91 = mem[64]
            mem[mem[64] + 32] = s
            _92 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _94 = sha3(mem[_92 + 32 len mem[_92]])
            require ext_call.return_data[0]
            require ext_code.size(stor102)
            staticcall stor102.getTroveFromTroveOwnersArray(uint256 arg1) with:
                    gas gas_remaining wei
                   args (sha3(mem[_92 + 32 len mem[_92]]) % ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor101)
            staticcall stor101.0x5189b08f with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[_91 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = _91 + 128
            mem[_91 + 64] = 12
            mem[_91 + 96] = 'sub overflow'
            if ext_call.return_data[0] >= arg1:
                if arg1 <= ext_call.return_data[0]:
                    if ext_call.return_data[0] - arg1 >= t:
                        idx = idx + 1
                        s = _94
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = _94
                    t = ext_call.return_data[0] - arg1
                    u = ext_call.return_data[0]
                    continue 
                mem[_91 + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_91 + 132] = 32
                idx = 0
                while idx < 12:
                    mem[idx + _91 + 196] = mem[idx + _91 + 96]
                    idx = idx + 32
                    continue 
            else:
                if ext_call.return_data[0] <= arg1:
                    if arg1 - ext_call.return_data[0] >= t:
                        idx = idx + 1
                        s = _94
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = _94
                    t = arg1 - ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    continue 
                mem[_91 + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_91 + 132] = 32
                idx = 0
                while idx < 12:
                    mem[idx + _91 + 196] = mem[idx + _91 + 96]
                    idx = idx + 32
                    continue 
            mem[_91 + 196] = mem[_91 + 216 len 12]
            revert with 0, 32, 12, mem[_91 + 196]
    else:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'sub overflow'
        idx = 1
        s = arg3
        t = ext_call.return_data[0] - arg1
        u = ext_call.return_data[0]
        while idx < arg2:
            _96 = mem[64]
            mem[mem[64] + 32] = s
            _97 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _99 = sha3(mem[_97 + 32 len mem[_97]])
            require ext_call.return_data[0]
            require ext_code.size(stor102)
            staticcall stor102.getTroveFromTroveOwnersArray(uint256 arg1) with:
                    gas gas_remaining wei
                   args (sha3(mem[_97 + 32 len mem[_97]]) % ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor101)
            staticcall stor101.0x5189b08f with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[_96 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = _96 + 128
            mem[_96 + 64] = 12
            mem[_96 + 96] = 'sub overflow'
            if ext_call.return_data[0] >= arg1:
                if arg1 <= ext_call.return_data[0]:
                    if ext_call.return_data[0] - arg1 >= t:
                        idx = idx + 1
                        s = _99
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = _99
                    t = ext_call.return_data[0] - arg1
                    u = ext_call.return_data[0]
                    continue 
                mem[_96 + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_96 + 132] = 32
                idx = 0
                while idx < 12:
                    mem[idx + _96 + 196] = mem[idx + _96 + 96]
                    idx = idx + 32
                    continue 
            else:
                if ext_call.return_data[0] <= arg1:
                    if arg1 - ext_call.return_data[0] >= t:
                        idx = idx + 1
                        s = _99
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = _99
                    t = arg1 - ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    continue 
                mem[_96 + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_96 + 132] = 32
                idx = 0
                while idx < 12:
                    mem[idx + _96 + 196] = mem[idx + _96 + 96]
                    idx = idx + 32
                    continue 
            mem[_96 + 196] = mem[_96 + 216 len 12]
            revert with 0, 32, 12, mem[_96 + 196]
    return address(u), t, s
}



}
